.class public abstract Lcom/oplus/internal/reflect/internal/BaseMethod;
.super Ljava/lang/Object;
.source "BaseMethod.java"


# instance fields
.field private final blacklist mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p2, "mappingField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 21
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    nop

    .line 23
    invoke-direct {p0, p2}, Lcom/oplus/internal/reflect/internal/BaseMethod;->getMethodNameFrom(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-direct {p0, p2}, Lcom/oplus/internal/reflect/internal/BaseMethod;->getMethodParameterTypesFrom(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v1

    .line 22
    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/internal/reflect/internal/BaseMethod;->findTargetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseMethod;->mMethod:Ljava/lang/reflect/Method;

    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 30
    :cond_0
    return-void
.end method

.method private blacklist checkExist()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseMethod;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 41
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Target method should not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist findMethodForName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 96
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 97
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    return-object v3

    .line 96
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findTargetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 88
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/oplus/internal/reflect/internal/BaseMethod;->findMethodForName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/internal/reflect/internal/BaseMethod;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private blacklist fixParameterTypes([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 123
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 124
    aget-object v1, p1, v0

    const-class v2, Ljava/util/HashSet;

    if-ne v1, v2, :cond_0

    .line 125
    const/4 v1, 0x0

    const-string v2, "android.util.ArraySet"

    invoke-static {v2, v1}, Lcom/oplus/utils/TypeUtils;->classForName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p1, v0

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    :cond_1
    return-object p1
.end method

.method private blacklist getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 107
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed getDeclaredMethod"

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    invoke-direct {p0, p3}, Lcom/oplus/internal/reflect/internal/BaseMethod;->fixParameterTypes([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Failed getDeclaredMethod with fix list types"

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getMethodNameFrom(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p1, "mappingField"    # Ljava/lang/reflect/Field;

    .line 44
    const-string v0, ""

    .line 45
    .local v0, "methodName":Ljava/lang/String;
    const-class v1, Lcom/oplus/internal/reflect/MethodName;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-class v1, Lcom/oplus/internal/reflect/MethodName;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/oplus/internal/reflect/MethodName;

    invoke-interface {v1}, Lcom/oplus/internal/reflect/MethodName;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_0
    const-class v1, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-class v1, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-interface {v1}, Lcom/oplus/internal/reflect/MethodSignature;->name()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    :goto_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 55
    :cond_2
    return-object v0
.end method

.method private blacklist getMethodParameterTypesFrom(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .locals 1
    .param p1, "mappingField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 62
    const-class v0, Lcom/oplus/internal/reflect/MethodName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-class v0, Lcom/oplus/internal/reflect/MethodName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/reflect/MethodName;

    invoke-interface {v0}, Lcom/oplus/internal/reflect/MethodName;->params()[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const-class v0, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-class v0, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-static {v0}, Lcom/oplus/internal/reflect/internal/MethodVisitor;->visitParameterTypes(Lcom/oplus/internal/reflect/MethodSignature;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 66
    :cond_1
    const-class v0, Lcom/oplus/internal/reflect/MethodParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-class v0, Lcom/oplus/internal/reflect/MethodParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/reflect/MethodParams;

    invoke-interface {v0}, Lcom/oplus/internal/reflect/MethodParams;->value()[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 68
    :cond_2
    const-class v0, Lcom/oplus/internal/reflect/MethodReflectParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    const-class v0, Lcom/oplus/internal/reflect/MethodReflectParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/reflect/MethodReflectParams;

    invoke-static {v0}, Lcom/oplus/internal/reflect/internal/MethodVisitor;->visitParameterTypes(Lcom/oplus/internal/reflect/MethodReflectParams;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 72
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getMethodReturnTypeFrom(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 3
    .param p1, "mappingField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 77
    .local v0, "genericType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 78
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 79
    .local v1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 80
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 84
    .end local v1    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    :cond_0
    const-class v1, Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method protected varargs blacklist invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseMethod;->checkExist()V

    .line 34
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
