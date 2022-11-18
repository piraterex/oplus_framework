.class public final Lcom/oplus/internal/reflect/RefConstructor;
.super Ljava/lang/Object;
.source "RefConstructor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RefConstructor"


# instance fields
.field private final blacklist mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 3
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

    .line 16
    .local p0, "this":Lcom/oplus/internal/reflect/RefConstructor;, "Lcom/oplus/internal/reflect/RefConstructor<TT;>;"
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0, p2}, Lcom/oplus/internal/reflect/RefConstructor;->getParameterTypesFrom(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v0

    .line 21
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0}, Lcom/oplus/internal/reflect/RefConstructor;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/internal/reflect/RefConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 23
    if-eqz v1, :cond_0

    .line 24
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 26
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

    .line 47
    .local p0, "this":Lcom/oplus/internal/reflect/RefConstructor;, "Lcom/oplus/internal/reflect/RefConstructor<TT;>;"
    iget-object v0, p0, Lcom/oplus/internal/reflect/RefConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Target constructor should not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/oplus/internal/reflect/RefConstructor;, "Lcom/oplus/internal/reflect/RefConstructor<TT;>;"
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed get constructor, targetClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getParameterTypesFrom(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
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

    .line 63
    .local p0, "this":Lcom/oplus/internal/reflect/RefConstructor;, "Lcom/oplus/internal/reflect/RefConstructor<TT;>;"
    const-class v0, Lcom/oplus/internal/reflect/MethodName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-class v0, Lcom/oplus/internal/reflect/MethodName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/reflect/MethodName;

    invoke-interface {v0}, Lcom/oplus/internal/reflect/MethodName;->params()[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const-class v0, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-class v0, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/reflect/MethodSignature;

    invoke-static {v0}, Lcom/oplus/internal/reflect/internal/MethodVisitor;->visitParameterTypes(Lcom/oplus/internal/reflect/MethodSignature;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 67
    :cond_1
    const-class v0, Lcom/oplus/internal/reflect/MethodParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-class v0, Lcom/oplus/internal/reflect/MethodParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/reflect/MethodParams;

    invoke-interface {v0}, Lcom/oplus/internal/reflect/MethodParams;->value()[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 69
    :cond_2
    const-class v0, Lcom/oplus/internal/reflect/MethodReflectParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    const-class v0, Lcom/oplus/internal/reflect/MethodReflectParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/oplus/internal/reflect/MethodReflectParams;

    invoke-static {v0}, Lcom/oplus/internal/reflect/internal/MethodVisitor;->visitParameterTypes(Lcom/oplus/internal/reflect/MethodReflectParams;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 73
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public varargs blacklist newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    .local p0, "this":Lcom/oplus/internal/reflect/RefConstructor;, "Lcom/oplus/internal/reflect/RefConstructor<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/internal/reflect/RefConstructor;->newInstanceWithException([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "Failed newInstance"

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs blacklist newInstanceWithException([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/oplus/internal/reflect/RefConstructor;, "Lcom/oplus/internal/reflect/RefConstructor<TT;>;"
    invoke-direct {p0}, Lcom/oplus/internal/reflect/RefConstructor;->checkExist()V

    .line 43
    iget-object v0, p0, Lcom/oplus/internal/reflect/RefConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/utils/TypeUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
