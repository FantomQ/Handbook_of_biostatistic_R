a <- read.table("anemia.txt", header=T)
#��ɢ��ͼ
plot(a$reticulyte,a$lymphocyte)
#�����ֱ��ͼ
fit <- lm(a$lymphocyte~a$reticulyte)
#����ֱ��ͼ��ɢ��ͼ
abline(fit)
#�õ��ع鷽�̵Ĳ���
summary(fit)
#y=183.65+511.49x
#�Ա�����95%��������
confint(fit,"a$reticulyte")
#�Ա�������������ϵ��
cor(a$reticulyte,a$lymphocyte)