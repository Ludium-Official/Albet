# [Riverbank] Albet

## **Overview**

Albet is the betting game platform on Aleo Ecosystem. Like how **[Rollbit](https://rollbit.com/)** offers betting game platform with the help of smart contract, Albet offers onchain program based betting games. With the help of privacy-preserving technology of Aleo Blcockchain, however, Albet offers fair, transparent, and trustless gaming platform that even preserves the user’s data confidentiality.

## **Problem**

The global online gambling market is expected to reach **$127.3 billion by 2027**, growing at a compound annual growth rate (CAGR) of **11.5%**. However, traditional centralized betting platforms come with significant privacy, security, and trust concerns. Players risk exposing their data to third parties, which can lead to misuse or breaches. Moreover, centralized control of these platforms can lead to a lack of transparency in game outcomes, raising doubts about fairness.

The growing demand for decentralized alternatives is evident in the rise of platforms like [**Rollbit**](https://rollbit.com/), which blends cryptocurrency-based betting with provably fair games. Rollbit, for instance, has experienced rapid growth due to its decentralized nature, fair betting mechanics, and anonymity, drawing in users who are increasingly concerned about data security and privacy. The success of such platforms highlights a market shift towards decentralized, privacy-focused solutions in the online gambling sector.

## **Solution**

Our game addresses these challenges by utilizing Aleo’s privacy-preserving blockchain technology. With Zero-Knowledge Proofs (ZKPs), we can ensure the fairness of the game without revealing sensitive player information. The game will be fully decentralized, ensuring transparency in game mechanics while keeping player transactions secure and private. Additionally, smart contracts will govern the betting process, ensuring trustless execution.

## **Game 1: Card Flip**

![image.png](%5BRiverbank%5D%20Albet%20c042a373810a41d3896bbc71cd416f28/image.png)

Card flip is a card guessing game. If the user guesses the card correctly, the user receives 2x their bet; if they guess wrong, they lose their wager. The game will leverage Aleo's privacy features, ensuring all transactions and player data remain confidential, while offering a fair and transparent gaming experience.

The reason we start with card flip is because it is simple in structure but effective in playing. The design above comes from our previous game development and the actual play environment is very likely to be changed

### Technical Flow

![https://i.ibb.co/m0Ns9Rq/image-13.png](https://i.ibb.co/m0Ns9Rq/image-13.png)

1. **Player Entry**: Players join the game by placing a bet and selecting one of two cards.
2. **Bet Handling**: A smart contract locks the player's bet, ensuring that funds are held securely until the result is determined.
3. **Game Logic**: The system uses ZKPs to determine the correct card without exposing any backend computations.
4. **Result Calculation**: Based on the player's choice, the smart contract calculates the outcome (win or lose).
5. **Payout**: If the player wins, they receive 2x their initial bet; if they lose, the bet is forfeited.

### **Details**

- **Data Point**: Player actions (card selection, bet amount).
- **Collector**: Smart contract collects and securely stores player data (choice, bet, and result).
- **API Collector**: APIs will be used to manage external connections for wallet integration and transaction verifications.
- **Data Sets for Metrics**: Metrics will include win-loss ratio, total bets placed, and average payouts. These metrics will be collected for reporting and optimization purposes.
- **Score Calculator**: Smart contracts will automatically calculate outcomes based on the player's bet and card selection.
- **Report**: A reporting mechanism will provide transparency into game outcomes and usage statistics.
- **Report UI**: The user interface will display player stats, total earnings, and other performance data in a clear and intuitive format.

## Additional Ideas

Card Flip is obviously the first iteration within the betting game genre. Honestly speaking, card flip cannot leverage the privacy record structure most adequately. For this reason, we have additional game structures 

### Game 2: Private PVP Betting Game

![image.png](%5BRiverbank%5D%20Albet%20c042a373810a41d3896bbc71cd416f28/image%201.png)

PVP Betting Games involve more than two players. It could be the backbone for any stand off betting games including sports, poker, or any other games that involve two party. Users send encrypted record to the dealer for betting. Once the game is over, users receive the amount based on the results of the game. In this situation, Aleo’s private record structure offers a novel the one player cannot know the other player’s hand or move

### Game 3: Lottery

![image.png](%5BRiverbank%5D%20Albet%20c042a373810a41d3896bbc71cd416f28/image%202.png)

Lottery is a classic game where users draw a number to find the winning object to claim the prize. It can be generalized into treasure seeking or puzzle types of games. With the help of Aleo’s private record structure, users cannot know what the correct number is whereas the controller cannot favor a certain user. It can be a great solution to a long standing problem of collusion for all lottery system.

### **Impact**

This project will demonstrate the power of Aleo’s privacy features in the gaming industry. It will showcase how privacy-focused blockchain solutions can create trustless, decentralized, and private gaming experiences. By building on Aleo, we will offer an alternative to centralized platforms, catering to the growing demand for decentralized betting solutions. This game has the potential to attract a significant portion of users who are already gravitating toward platforms like Rollbit and other decentralized betting products, further boosting Aleo's ecosystem.

### **Roadmap (6 Weeks)**

- **Phase 1: Quick Start (Week 1)**
    - Finalize game logic and rules.
    - Develop initial smart contracts for handling bets and payouts.
    - Set up basic UI wireframes and define user flows.
    - Integrate wallet for placing bets.
    - Begin internal testing on Aleo testnet.
- **Phase 2: MVP (Weeks 2-4)**
    - Implement core game features, including smart contract logic for betting, card selection, and result determination using Zero-Knowledge Proofs (ZKPs).
    - Conduct security audits to ensure the integrity of the smart contracts.
    - Launch MVP on the Aleo testnet for limited user testing.
    - Implement basic reporting mechanisms to track win-loss ratios, bet amounts, and player activity.
    - Begin user onboarding and early feedback collection.
- **Phase 3: Final Launch & Expansion (Weeks 5-6)**
    - Full deployment of the game on the Aleo mainnet.
    - Finalize advanced features like reporting UI, detailed game analytics, and leaderboards.
    - Scale player base by launching marketing campaigns and partnering with relevant decentralized apps (dApps).
    - Continue refining game mechanics and optimize based on user feedback from the MVP phase.
    - Prepare for post-launch expansion, including new game modes or tournament options.

### **Budget and Milestones - Quick Start**

| Category | Description | Duration |
| --- | --- | --- |
| Planning | Game design, logic finalization, UI/UX wireframes | 1 week |
| Backend Engineering | Smart contract development, bet handling, ZKP integration | 3 weeks |
| Frontend Engineering | Frontend development, wallet integration, API connections | 2 weeks |
| Testing | Game functionality testing, 100 user acquisitions | 1 week |

### **Team**

- Jesse : Co-founder, ex-VC and Startup, previously at Softbank Ventures and Kakao
- Boosik : Co-founder, founding member at A41 (Top-tier validator in Korea), ex-Samsung mobile engineer
