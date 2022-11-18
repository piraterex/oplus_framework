.class public abstract Lcom/oplus/internal/reflect/internal/BaseField;
.super Ljava/lang/Object;
.source "BaseField.java"


# instance fields
.field private final blacklist mField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 11
    .local p1, "targetCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/oplus/internal/reflect/internal/BaseField;->getField(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 17
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

    .line 31
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 34
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Target field should not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getField(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 2
    .param p2, "targetField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 21
    .local p1, "targetCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 22
    .local v0, "result":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object v0

    .line 24
    .end local v0    # "result":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/utils/Alog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected blacklist getBoolean(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 38
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected blacklist getByte(Ljava/lang/Object;)B
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 48
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method protected blacklist getChar(Ljava/lang/Object;)C
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 58
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v0

    return v0
.end method

.method protected blacklist getDouble(Ljava/lang/Object;)D
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 68
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected blacklist getFloat(Ljava/lang/Object;)F
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 78
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method protected blacklist getInt(Ljava/lang/Object;)I
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 88
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist getLong(Ljava/lang/Object;)J
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 98
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected blacklist getObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 118
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getShort(Ljava/lang/Object;)S
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 108
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v0

    return v0
.end method

.method protected blacklist setBoolean(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 43
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 44
    return-void
.end method

.method protected blacklist setByte(Ljava/lang/Object;B)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 53
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    .line 54
    return-void
.end method

.method protected blacklist setChar(Ljava/lang/Object;C)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 63
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    .line 64
    return-void
.end method

.method protected blacklist setDouble(Ljava/lang/Object;D)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 73
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    .line 74
    return-void
.end method

.method protected blacklist setFloat(Ljava/lang/Object;F)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 83
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 84
    return-void
.end method

.method protected blacklist setInt(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 93
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 94
    return-void
.end method

.method protected blacklist setLong(Ljava/lang/Object;J)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 103
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 104
    return-void
.end method

.method protected blacklist setObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 123
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method protected blacklist setShort(Ljava/lang/Object;S)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/oplus/internal/reflect/internal/BaseField;->checkExist()V

    .line 113
    iget-object v0, p0, Lcom/oplus/internal/reflect/internal/BaseField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    .line 114
    return-void
.end method
