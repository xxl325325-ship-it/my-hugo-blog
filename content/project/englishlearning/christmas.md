---
title: "Christmas Learning"
date: 2025-01-01
type: "page"
layout: "christmas-english"
description: "Learn English about Christmas - Fun and gentle learning for kids aged 3-6"
featured_image: "/images/english-learning-icon.svg"
---

<div class="christmas-container">
  <h1 class="page-title">Christmas Time</h1>
  
  <div class="learning-sentences">
    <div class="sentence-card">
      <div class="sentence-image">
        <svg viewBox="0 0 200 150" class="christmas-illustration">
          <!-- Christmas tree -->
          <polygon points="100,30 70,70 130,70" fill="#7CB342"/>
          <polygon points="100,50 60,90 140,90" fill="#8BC34A"/>
          <polygon points="100,70 50,110 150,110" fill="#9CCC65"/>
          <rect x="95" y="110" width="10" height="20" fill="#8D6E63"/>
          <circle cx="85" cy="60" r="3" fill="#FFE082"/>
          <circle cx="115" cy="75" r="3" fill="#FFCCBC"/>
          <circle cx="95" cy="90" r="3" fill="#B2DFDB"/>
        </svg>
      </div>
      <div class="sentence-text">This is a Christmas tree.</div>
      <button class="play-button" onclick="playAudio('sentence1')">
        <svg viewBox="0 0 24 24" class="play-icon">
          <polygon points="5,3 19,12 5,21" fill="currentColor"/>
        </svg>
      </button>
    </div>
    
    <div class="sentence-card">
      <div class="sentence-image">
        <svg viewBox="0 0 200 150" class="christmas-illustration">
          <!-- Santa -->
          <circle cx="100" cy="80" r="25" fill="#FFCCBC"/>
          <path d="M75,80 Q100,60 125,80" fill="white"/>
          <path d="M70,85 Q100,65 130,85" fill="#F44336"/>
          <circle cx="90" cy="75" r="3" fill="#333"/>
          <circle cx="110" cy="75" r="3" fill="#333"/>
          <path d="M95,85 Q100,90 105,85" fill="#333"/>
          <rect x="85" y="105" width="30" height="25" fill="#F44336"/>
          <rect x="75" y="110" width="50" height="8" fill="white"/>
        </svg>
      </div>
      <div class="sentence-text">Santa is coming tonight.</div>
      <button class="play-button" onclick="playAudio('sentence2')">
        <svg viewBox="0 0 24 24" class="play-icon">
          <polygon points="5,3 19,12 5,21" fill="currentColor"/>
        </svg>
      </button>
    </div>
    
    <div class="sentence-card">
      <div class="sentence-image">
        <svg viewBox="0 0 200 150" class="christmas-illustration">
          <!-- Gift -->
          <rect x="60" y="70" width="80" height="60" fill="#E91E63" rx="5"/>
          <rect x="95" y="70" width="10" height="60" fill="#FCE4EC"/>
          <rect x="60" y="95" width="80" height="10" fill="#FCE4EC"/>
          <path d="M100,50 Q90,70 100,70 Q110,70 100,50" fill="#4CAF50"/>
          <path d="M100,50 Q95,60 100,60 Q105,60 100,50" fill="#66BB6A"/>
        </svg>
      </div>
      <div class="sentence-text">I love Christmas gifts.</div>
      <button class="play-button" onclick="playAudio('sentence3')">
        <svg viewBox="0 0 24 24" class="play-icon">
          <polygon points="5,3 19,12 5,21" fill="currentColor"/>
        </svg>
      </button>
    </div>
  </div>
  
  <div class="closing-message">
    Merry Christmas and Happy Learning!
  </div>
</div>

<style>
.christmas-container {
  min-height: 100vh;
  background: linear-gradient(135deg, #FFF8F0 0%, #F0F8FF 100%);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 1rem;
  box-sizing: border-box;
  font-family: 'Comic Sans MS', cursive, sans-serif;
}

.page-title {
  font-size: 2.5rem;
  color: #D2691E;
  text-align: center;
  margin-bottom: 2rem;
  text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
  font-weight: 300;
  opacity: 0.9;
}

.learning-sentences {
  display: flex;
  gap: 1.5rem;
  margin-bottom: 2rem;
  flex-wrap: wrap;
  justify-content: center;
}

.sentence-card {
  background: rgba(255, 255, 255, 0.85);
  border-radius: 25px;
  padding: 1.5rem;
  box-shadow: 0 6px 20px rgba(0,0,0,0.08);
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
  min-width: 280px;
  transition: transform 0.3s ease;
  backdrop-filter: blur(8px);
  border: 1px solid rgba(255,182,193,0.2);
}

.sentence-card:hover {
  transform: translateY(-5px);
}

.sentence-image {
  width: 200px;
  height: 150px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.christmas-illustration {
  width: 100%;
  height: 100%;
  filter: drop-shadow(0 4px 8px rgba(0,0,0,0.1));
}

.sentence-text {
  font-size: 1.1rem;
  color: #A0826D;
  text-align: center;
  font-weight: normal;
  line-height: 1.4;
  opacity: 0.7;
}

.play-button {
  background: linear-gradient(45deg, #FFB6C1, #FFC0CB);
  border: none;
  border-radius: 50px;
  padding: 12px 25px;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  transition: all 0.3s ease;
  color: white;
  font-size: 1rem;
  box-shadow: 0 3px 12px rgba(255,182,193,0.3);
  margin-top: 10px;
}

.play-button:hover {
  background: linear-gradient(45deg, #FFC0CB, #FFD1DC);
  transform: scale(1.03);
  box-shadow: 0 5px 15px rgba(255,182,193,0.4);
}

.play-button:active {
  transform: scale(0.98);
}

.play-icon {
  width: 20px;
  height: 20px;
  margin-left: 2px;
}

.closing-message {
  font-size: 1.5rem;
  color: #D2691E;
  text-align: center;
  font-weight: 300;
  margin-top: 1.5rem;
  text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
  opacity: 0.8;
}

@media (max-width: 768px) {
  .learning-sentences {
    flex-direction: column;
    gap: 1.5rem;
  }
  
  .page-title {
    font-size: 2.5rem;
  }
  
  .sentence-card {
    min-width: 200px;
    padding: 1.5rem;
  }
  
  .closing-message {
    font-size: 1.5rem;
  }
}

@media (max-width: 480px) {
  .christmas-container {
    padding: 1rem;
  }
  
  .page-title {
    font-size: 2rem;
    margin-bottom: 2rem;
  }
  
  .sentence-text {
    font-size: 1.2rem;
  }
  
  .play-button {
    width: 50px;
    height: 50px;
  }
  
  .play-icon {
    width: 20px;
    height: 20px;
  }
}
</style>

<script>
function playAudio(sentenceId) {
  // Create audio context for speech synthesis
  if ('speechSynthesis' in window) {
    const utterance = new SpeechSynthesisUtterance();
    
    // Set voice and speed for children
    utterance.lang = 'en-US';
    utterance.rate = 0.8;
    utterance.pitch = 1.1;
    utterance.volume = 0.8;
    
    // Get the text content based on sentence ID
    switch(sentenceId) {
      case 'sentence1':
        utterance.text = "This is a Christmas tree.";
        break;
      case 'sentence2':
        utterance.text = "Santa is coming tonight.";
        break;
      case 'sentence3':
        utterance.text = "I love Christmas gifts.";
        break;
    }
    
    // Play the audio
    speechSynthesis.speak(utterance);
    
    // Add visual feedback
    const button = event.currentTarget;
    button.style.transform = 'scale(0.9)';
    setTimeout(() => {
      button.style.transform = 'scale(1)';
    }, 200);
  } else {
    alert('Audio playback is not supported in your browser.');
  }
}

// Add some gentle animations
window.addEventListener('load', function() {
  const cards = document.querySelectorAll('.sentence-card');
  cards.forEach((card, index) => {
    setTimeout(() => {
      card.style.opacity = '0';
      card.style.transform = 'translateY(20px)';
      card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
      
      setTimeout(() => {
        card.style.opacity = '1';
        card.style.transform = 'translateY(0)';
      }, 100);
    }, index * 200);
  });
});
</script>