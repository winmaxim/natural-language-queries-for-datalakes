from logic.datagenie import DataGenie
from utils.bcolors import Bcolors

# Use DataGenie
dg = DataGenie()

question = "List 5 products and their supplier name"

dg_answer = dg.answer(question)
answer = dg_answer["response"]

print("******************** RESULT **********************")
print("*                                                *")
print("*                 Final answer                   *")
print("*                                                *")
print("**************************************************")
print()   
print("Your question: ", question)
print()
print()
print("Answer to the question: ")
print(Bcolors.OKCYAN + answer['answer'] + Bcolors.ENDC)
print()
print("Explanation: ")
print(Bcolors.OKCYAN + answer['explanation'] + Bcolors.ENDC)