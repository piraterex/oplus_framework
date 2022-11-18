.class public Lcom/oplus/internal/reflect/internal/MethodVisitor;
.super Ljava/lang/Object;
.source "MethodVisitor.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist visitParameterTypes(Lcom/oplus/internal/reflect/MethodReflectParams;)[Ljava/lang/Class;
    .locals 1
    .param p0, "annotation"    # Lcom/oplus/internal/reflect/MethodReflectParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/internal/reflect/MethodReflectParams;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 11
    invoke-interface {p0}, Lcom/oplus/internal/reflect/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/internal/reflect/internal/MethodVisitor;->visitParameterTypesInner([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist visitParameterTypes(Lcom/oplus/internal/reflect/MethodSignature;)[Ljava/lang/Class;
    .locals 1
    .param p0, "annotation"    # Lcom/oplus/internal/reflect/MethodSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/internal/reflect/MethodSignature;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 15
    invoke-interface {p0}, Lcom/oplus/internal/reflect/MethodSignature;->params()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/internal/reflect/internal/MethodVisitor;->visitParameterTypesInner([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist visitParameterTypesInner([Ljava/lang/String;)[Ljava/lang/Class;
    .locals 5
    .param p0, "parameterTypeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 19
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 21
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 22
    aget-object v2, p0, v1

    .line 25
    .local v2, "parameterTypeName":Ljava/lang/String;
    invoke-static {v2}, Lcom/oplus/utils/TypeUtils;->getPrimitiveClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    .line 28
    aget-object v3, v0, v1

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 29
    invoke-static {v2, v4}, Lcom/oplus/utils/TypeUtils;->classForName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    .line 33
    :cond_0
    aget-object v3, v0, v1

    if-nez v3, :cond_1

    .line 34
    const-string/jumbo v3, "parameter type should not null"

    invoke-static {v3}, Lcom/oplus/utils/Alog;->d(Ljava/lang/String;)V

    .line 35
    return-object v4

    .line 21
    .end local v2    # "parameterTypeName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method
