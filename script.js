document.addEventListener('DOMContentLoaded', () => {
    
    // --- Tabs Logic ---
    const navLinks = document.querySelectorAll('.nav-links a');
    const tabPanes = document.querySelectorAll('.tab-pane');

    navLinks.forEach(link => {
        link.addEventListener('click', (e) => {
            e.preventDefault();
            
            // Remove active from all tabs and links
            navLinks.forEach(l => l.classList.remove('active'));
            tabPanes.forEach(p => p.classList.remove('active'));
            
            // Add active to clicked
            link.classList.add('active');
            const targetId = link.getAttribute('data-tab');
            document.getElementById(targetId).classList.add('active');
            
            // Smooth scroll to top
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
    });

    // --- FAQ Logic ---
    const faqItems = document.querySelectorAll('.faq-item');
    faqItems.forEach(item => {
        const question = item.querySelector('.faq-question');
        question.addEventListener('click', () => {
            const isActive = item.classList.contains('active');
            
            // Close all other FAQs
            faqItems.forEach(faq => faq.classList.remove('active'));
            
            // Toggle current
            if (!isActive) {
                item.classList.add('active');
            }
        });
    });


    // --- Render Rarities ---
    const raritiesContainer = document.getElementById('rarities-container');
    const rcrRarities = [
        { "name": "Common", "score": 1 },
        { "name": "Uncommon", "score": 4 },
        { "name": "Rare", "score": 7 },
        { "name": "Epic", "score": 10 },
        { "name": "Legendary", "score": 13 },
        { "name": "Mythical", "score": 18 },
        { "name": "Elite", "score": 28 },
        { "name": "Exotic", "score": 38 },
        { "name": "Galactic", "score": 63 },
        { "name": "Transcended", "score": 88 },
        { "name": "Celestial", "score": 113 },
        { "name": "Cosmic", "score": 148 },
        { "name": "Ascended", "score": 183 },
        { "name": "Supercharged", "score": 233 },
        { "name": "Outlandish", "score": 283 },
        { "name": "Exclusive", "score": 333 },
        { "name": "Crystallized", "score": 383 },
        { "name": "Frostbitten", "score": 458 },
        { "name": "Blossom", "score": 558 },
        { "name": "Angelic", "score": 700 },
        { "name": "Quantum", "score": 850 },
        { "name": "Ectoplasmic", "score": 1000 },
        { "name": "Ethereal", "score": 1500 },
        { "name": "Voidlight", "score": 2000 },
        { "name": "Champion", "score": 2500 }
    ];
    
    function getGradientForRarity(index, total) {
        // Generates a cool gradient progression based on position in array
        const hue1 = (index / total) * 360;
        const hue2 = ((index / total) * 360 + 40) % 360;
        return `linear-gradient(90deg, hsl(${hue1}, 80%, 60%), hsl(${hue2}, 90%, 50%))`;
    }

    if (typeof rcrRarities !== 'undefined' && rcrRarities.length > 0) {
        rcrRarities.forEach((rarity, index) => {
            if (rarity.name === "No rarity") return; // Skip placeholder

            const div = document.createElement('div');
            div.className = 'rarity-item';
            
            // Apply dynamic glowing left border based on index
            const gradient = getGradientForRarity(index, rcrRarities.length);
            div.style.borderLeft = `4px solid transparent`;
            div.style.borderImage = `${gradient} 1`;
            
            div.innerHTML = `
                <div class="rarity-rank">#${index}</div>
                <div class="rarity-name" style="background: ${gradient}; -webkit-background-clip: text; -webkit-text-fill-color: transparent;">
                    ${rarity.name}
                </div>
                <div class="rarity-score">Rarity Number: ${rarity.score.toLocaleString()}</div>
            `;
            raritiesContainer.appendChild(div);
        });
    }

    // --- LUA PARSER UTILITIES ---
    function parseLua(code) {
        try {
            let settings = {};
            let sMatch = code.match(/Settings\s*=\s*\{([\s\S]*?)\}/);
            if (sMatch) {
                let lines = sMatch[1].split(/\n/);
                lines.forEach(l => {
                    let m = l.match(/\["([^"]+)"\]\s*=\s*(.+)/);
                    if (m) {
                        let k = m[1].trim();
                        let v = m[2].replace(/,/g, '').trim();
                        if (v.startsWith('"') && v.endsWith('"')) v = v.slice(1, -1);
                        else if (v === 'true') v = true;
                        else if (v === 'false') v = false;
                        else {
                            let num = parseFloat(v.replace(/_/g, ''));
                            if (!isNaN(num)) v = num;
                        }
                        settings[k] = v;
                    }
                });
            }
            
            let runesList = [];
            let rMatch = code.match(/Runes\s*=\s*\{([\s\S]*?)\n\t\}\n\}/);
            if (!rMatch) rMatch = code.match(/Runes\s*=\s*\{([\s\S]*)\}\s*\}/);

            if (rMatch) {
                let rStr = rMatch[1];
                let blocks = rStr.split(/\{\s*Name\s*=/);
                blocks.forEach(b => {
                    if (b.trim().length === 0) return;
                    let blockStr = "Name =" + b;
                    let rune = {};
                    
                    let flatMatches = blockStr.matchAll(/(\w+)\s*=\s*([^,\n]+)/g);
                    for (const match of flatMatches) {
                        let k = match[1];
                        let v = match[2].trim();
                        if (v === '{' || k === 'stats' || k === 'setAmounts') continue;
                        if (v.startsWith('"') && v.endsWith('"')) v = v.slice(1, -1);
                        else if (v === 'true') v = true;
                        else if (v === 'false') v = false;
                        else {
                            let cln = v.replace(/_/g, '').trim();
                            if (cln.includes('/')) {
                                let p = cln.split('/');
                                if(p.length === 2 && !isNaN(parseFloat(p[0])) && !isNaN(parseFloat(p[1]))) {
                                    v = parseFloat(p[0]) / parseFloat(p[1]);
                                }
                            } else {
                                let num = parseFloat(cln);
                                if (!isNaN(num)) v = num;
                            }
                        }
                        if (v !== '{') rune[k] = v;
                    }
                    
                    // Improved nested parsing for stats and setAmounts
                    const statRegex = /(\w+)\s*=\s*\{([\s\S]*?)\}(?=\s*,|\s*\n|\s*\})/g;
                    let match;
                    while ((match = statRegex.exec(blockStr)) !== null) {
                        const statName = match[1];
                        const statContent = match[2];
                        
                        if (statContent.includes('add') || statContent.includes('max') || statContent.includes('setAmounts') || statContent.includes('overrideText')) {
                            const statObj = {};
                            
                            // 1. Extract setAmounts specifically
                            if (statContent.includes('setAmounts')) {
                                const saMatch = statContent.match(/setAmounts\s*=\s*\{([\s\S]*?)\}/);
                                if (saMatch) {
                                    const saStr = saMatch[1];
                                    const saArray = [];
                                    const saPairs = saStr.matchAll(/\[([\d_]+)\]\s*=\s*([\d_.]+)/g);
                                    for (const pair of saPairs) {
                                        saArray.push({
                                            threshold: parseFloat(pair[1].replace(/_/g, '')),
                                            amount: parseFloat(pair[2].replace(/_/g, ''))
                                        });
                                    }
                                    statObj.setAmounts = saArray;
                                }
                            }
                            
                            // 2. Extract flat keys (add, max, noDebuff, overrideText)
                            const cleanContent = statContent.replace(/setAmounts\s*=\s*\{[\s\S]*?\}/, '');
                            const keyMatches = cleanContent.matchAll(/(\w+)\s*=\s*([^,\n]+)/g);
                            for (const km of keyMatches) {
                                const k = km[1];
                                let v = km[2].trim();
                                if (v.startsWith('"') && v.endsWith('"')) v = v.slice(1, -1);
                                else if (v === 'true') v = true;
                                else if (v === 'false') v = false;
                                else {
                                    const num = parseFloat(v.replace(/_/g, ''));
                                    if (!isNaN(num)) v = num;
                                }
                                statObj[k] = v;
                            }
                            rune[statName] = statObj;
                        }
                    }
                    if (rune.Name) runesList.push(rune);
                });
            }
            return { settings, runes: runesList };
        } catch(e) {
            console.error("Lua parse error", e);
            return null;
        }
    }
    function getSecretTier(chanceStr) {
        if (!chanceStr) return { label: 'T?', color: '#fff' };
        let denom = 0;
        let cStr = String(chanceStr).replace(/_/g,'');
        if (cStr.includes('/')) {
            let p = cStr.split('/');
            denom = p.length === 2 ? parseFloat(p[1]) : parseFloat(p[0]);
        } else {
            denom = Math.round(1 / parseFloat(cStr));
        }
        
        if (isNaN(denom)) return { label: 'T?', color: '#fff' };
        if (denom >= 5000000) return { label: 'T3', color: '#ffb347' };
        if (denom >= 500000) return { label: 'T2', color: '#ffcc5c' };
        if (denom >= 50000) return { label: 'T1', color: '#ffeead' };
        return { label: '', color: '#fff' }; 
    }

    // --- Render Runes ---
    const runesContainer = document.getElementById('runes-container');
    const filterContainer = document.getElementById('world-filter-container');
    let currentRunesData = [];

    function formatNumber(num) {
        if (num === null || num === undefined) return "";
        if (typeof num === 'number') {
             if (num < 1 && num > 0) return num.toPrecision(3); 
             return num.toLocaleString();
        }
        return String(num).replace(/max.*}/g, ''); 
    }
    
    function renderFilters() {
        filterContainer.innerHTML = '';
        if (currentRunesData.length === 0) return;
        const worlds = ["All", ...new Set(currentRunesData.map(g => g.settings.Event ? "Event" : (g.settings.RuneWorld || "Unknown")))];
        worlds.forEach(world => {
            const btn = document.createElement('button');
            btn.className = `filter-btn ${world === 'All' ? 'active' : ''}`;
            btn.textContent = world;
            btn.addEventListener('click', () => {
                document.querySelectorAll('#world-filter-container .filter-btn').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                renderRunes(world);
            });
            filterContainer.appendChild(btn);
        });
    }

    function renderRunes(worldFilter) {
        runesContainer.innerHTML = '';
        if (!currentRunesData || currentRunesData.length === 0) {
            runesContainer.innerHTML = '<p style="text-align:center; color:var(--danger); width:100%; grid-column: 1 / -1; padding:2rem;">Data failed to load over network. Note: If you are running this from a local <code>file:///</code> path, your browser will block <code>fetch()</code> requests. You must use VS Code Live Server or upload to test!</p>';
            return;
        }
        
        const filteredData = worldFilter === 'All' 
            ? currentRunesData 
            : currentRunesData.filter(d => (d.settings.Event ? "Event" : (d.settings.RuneWorld || "Unknown")) === worldFilter);

        filteredData.forEach(packageData => {
            const settings = packageData.settings;
            
            // Generate category header
            const header = document.createElement('h3');
            header.style = "grid-column: 1 / -1; margin-top: 1.5rem; margin-bottom: 0px; border-bottom: 2px solid var(--card-border); padding-bottom: 8px; color: #fff; font-size: 20px; font-weight: 800; font-family: 'Inter', sans-serif;";
            header.textContent = `~ ${settings.RuneName || 'Unnamed'} ~`;
            runesContainer.appendChild(header);

            packageData.runes.forEach(rune => {
                const card = document.createElement('div');
                card.className = 'glass-card';
                card.style.animation = `fadeIn 0.3s ease-out forwards`;
                
                let headerAccent = 'rgba(255,255,255,0.1)';
                if (rune.Secret) headerAccent = 'linear-gradient(90deg, #ff0055, #ff00ff)';
                else if (rune.Chance < 0.001) headerAccent = 'linear-gradient(90deg, #8b5cf6, #3b82f6)';
                else if (rune.Chance < 0.05) headerAccent = 'linear-gradient(90deg, #10b981, #3b82f6)';
                
                let statsHtml = '';
                const excludeKeys = ['Name', 'Chance', 'Number', 'Secret', 'overrideText', 'max', 'noDebuff'];
                
                for (const [key, value] of Object.entries(rune)) {
                    if (!excludeKeys.includes(key)) {
                         let displayValue = '';
                         if (typeof value === 'object' && value !== null) {
                             if (Array.isArray(value.setAmounts) && value.setAmounts.length > 0) {
                                  displayValue = value.setAmounts.map(sa => 
                                      `<span style="color:var(--accent);">${formatNumber(sa.threshold)}</span> = ${formatNumber(sa.amount)}`
                                  ).join('<br>');
                             } else {
                                  displayValue = `+${formatNumber(value.add)} <span style="font-size:0.75rem; color:var(--text-muted);">(Max: ${formatNumber(value.max)})</span>`;
                             }
                         } else {
                               displayValue = formatNumber(value);
                         }
                         const displayName = (value && value.overrideText) ? value.overrideText : key;
                         statsHtml += `<div class="stat-item" style="align-items: flex-start;"><span class="stat-name">${displayName}</span><span class="stat-val highlight" style="text-align: right; line-height: 1.4;">${displayValue}</span></div>`;
                    }
                }

                const chanceStr = rune.Chance ? `1 in ${Math.round(1/rune.Chance).toLocaleString()}` : "?";
                
                let secretTierBadge = '';
                if (rune.Secret) {
                    let tier = getSecretTier(rune.Chance);
                    if (tier.label) {
                        secretTierBadge = `<span style="background: rgba(255,255,255,0.1); color: ${tier.color}; padding: 2px 6px; border-radius: 4px; font-size: 11px; font-weight: 800; margin-left: 6px;">${tier.label}</span>`;
                    }
                }

                card.innerHTML = `
                    <div style="position:absolute; top:0; left:0; width:100%; height:4px; background:${headerAccent}; border-radius: 8px 8px 0 0;"></div>
                    <div class="rune-header">
                        <span class="rune-name">${rune.Name} ${rune.Secret ? `<span style="color:#ff0055; font-size: 0.8rem; vertical-align:top; margin-left:4px;">(Secret)</span>` : ''} ${secretTierBadge}</span>
                        <span class="rune-chance">${chanceStr}</span>
                    </div>
                    <div class="rune-stats">${statsHtml || '<div class="stat-item"><span class="stat-name">Stats Hidden</span></div>'}</div>
                    <div class="rune-footer">World: ${settings.RuneWorld || 'Unknown'} | Rune ID: ${settings.RuneName}</div>
                `;
                runesContainer.appendChild(card);
            });
        });
    }

    // --- DYNAMIC RUNES LOADING (DIRECT FROM FOLDER) ---
    async function fetchRunesDirectly() {
        runesContainer.innerHTML = '<p style="text-align:center; padding: 2rem;">Loading Runes from folder...</p>';
        
        let fileList = [
            "300K.lua", "Cave.lua", "Desert.lua", "Frosty.lua", "Jungle.lua", "Pirate.lua", "Starter.lua"
        ];

        // Attempt to dynamically scrape the index of /Runes/ if the server provides it
        try {
            const dirResponse = await fetch('Runes/');
            if (dirResponse.ok) {
                const htmlText = await dirResponse.text();
                // Find all hrefs ending in .lua
                const matches = htmlText.match(/href="([^"]+\.lua)"/g);
                if (matches) {
                    const discoveredFiles = matches.map(m => m.replace('href="', '').replace('"', '').replace(/^[\\\/]/, ''));
                    // Only use discovered if it actually found lua files, replacing fallback list
                    if (discoveredFiles.length > 0) {
                        fileList = discoveredFiles.map(f => f.split('/').pop()); // ensure no paths attached
                    }
                }
            }
        } catch (e) {
            console.log("Directory indexing not available; using fallback array.", e);
        }

        // Deduplicate
        fileList = [...new Set(fileList)];

        let loadedPackages = [];
        for (const file of fileList) {
            try {
                // Cache buster to ensure latest version is fetched
                const res = await fetch(`Runes/${file}?t=${new Date().getTime()}`);
                if (res.ok) {
                    const luaText = await res.text();
                    const parsed = parseLua(luaText);
                    if (parsed && parsed.runes && parsed.runes.length > 0) {
                        parsed.filename = file;
                        loadedPackages.push(parsed);
                    }
                } else {
                    console.warn(`Failed to fetch Runes/${file}: ` + res.status);
                }
            } catch(e) {
                console.error(`Error loading Runes/${file}: `, e);
            }
        }

        loadedPackages.sort((a,b) => (a.settings.RuneOrder || 9999) - (b.settings.RuneOrder || 9999));
        currentRunesData = loadedPackages;
        
        renderFilters();
        renderRunes('All');

        // Send new data to the iframe dynamically
        const iframe = document.querySelector('#studio iframe');
        if (iframe && iframe.contentWindow) {
            // Need a tiny timeout to ensure iframe is fully initialized before posting
            setTimeout(() => {
                iframe.contentWindow.postMessage({ type: 'RCR_WORKSPACE_LOADED', data: currentRunesData }, '*');
            }, 500);
        }
    }

    // Initialize
    fetchRunesDirectly();

});
