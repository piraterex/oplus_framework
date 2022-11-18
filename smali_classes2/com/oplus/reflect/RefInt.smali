.class public Lcom/oplus/reflect/RefInt;
.super Ljava/lang/Object;
.source "RefInt.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RefInt"


# instance fields
.field private blacklist field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/reflect/RefInt;->field:Ljava/lang/reflect/Field;

    .line 13
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 14
    return-void
.end method


# virtual methods
.method public whitelist get(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/oplus/reflect/RefInt;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefInt"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist set(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "intValue"    # I

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/oplus/reflect/RefInt;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefInt"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
