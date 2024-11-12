# AWS User Group Berlin 2024 talk "Deep dive on project ‘Bedrock Claude Chat’"

**Outline:**
Everyone who is excited about how to solve business challenges with Generative AI should keep an eye on what AWS has to offer as official proof of concepts in Github. My talk is a deep dive into this absolute gold project, accessible via https://github.com/aws-samples/bedrock-claude-chat . I will cover how to install, customer feedback we received and things to keep in mind to maintain a high level of security.

**Talk structure:**

* Amazon Bedrock 
  * Playground and Model Access
  * Cost models / cross Region inference: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html
    * Example code: https://github.com/typex1/AWS-User-Group-Berlin-2024-Bedrock-Claude-Chat/blob/main/code/bedrock-cross-region-inference.sh

* Working backwards from the customer - which features are relevant?
  * Frontend
  * Multi- User, Sign up / Sign in feature
  * Multi language
  * Region choice
  * History of past activities (chats)
  * Ad-hoc upload of documents
  * Document knowledge bases (Retrieval Augmented Generation):
https://aws.amazon.com/blogs/machine-learning/implementing-knowledge-bases-for-amazon-bedrock-in-support-of-gdpr-right-to-be-forgotten-requests/ 
  * Adjustable security

* Great AWS (project) resources – how to get the most out of them
  * https://awsstash.com
  * https://github.com/aws-samples
  * For learning: https://workshops.aws/
  * 

* Project „Bedrock Claude Chat“
  * https://github.com/aws-samples/bedrock-claude-chat
  * 58 contributors
  * Version 2.x
  * Great resource to let customers try AI safely
  * Goes beyond a simple „Proof of Concept“
  * Great resource to learn how to build and improve

* Deployment
  * CloudFormation
  * Infrastructure Composer
  * Get familiar with CDK
  * Be aware of WAF deployments – always in us-east-1
  * Try not to use CloudShell (lack of persistence)
  * Cloud9, EC2 or local cdk project

* Operations
  * Step Functions
  * CloudWatch Logs Insights query collection: https://github.com/typex1/CloudWatch-Logs-Insights-Queries
  * X-Ray tracing

* Optional: Networking
  * Downloading content from external APIs

* Security
  * Limit Sign-up activities
  * Add Bedrock Guardrails: https://aws.amazon.com/blogs/machine-learning/safeguard-a-generative-ai-travel-agent-with-prompt-engineering-and-amazon-bedrock-guardrails/

**Further reading:**
* https://github.com/aws-samples/genai-quickstart-pocs
* Audio summarizer using Amazon Transcribe, Step Functions and Amazon Bedrock: https://aws.amazon.com/blogs/machine-learning/summarize-call-transcriptions-securely-with-amazon-transcribe-and-amazon-bedrock-guardrails/
