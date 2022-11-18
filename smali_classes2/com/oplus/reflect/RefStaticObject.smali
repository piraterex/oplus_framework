.class public Lcom/oplus/reflect/RefStaticObject;
.super Ljava/lang/Object;
.source "RefStaticObject.java"


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
.field private static final blacklist TAG:Ljava/lang/String; = "RefStaticObject"


# instance fields
.field private blacklist field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 12
    .local p0, "this":Lcom/oplus/reflect/RefStaticObject;, "Lcom/oplus/reflect/RefStaticObject<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/reflect/RefStaticObject;->field:Ljava/lang/reflect/Field;

    .line 14
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public whitelist get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/oplus/reflect/RefStaticObject;, "Lcom/oplus/reflect/RefStaticObject<TT;>;"
    const/4 v0, 0x0

    .line 24
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/oplus/reflect/RefStaticObject;->field:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RefStaticObject"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public whitelist set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/oplus/reflect/RefStaticObject;, "Lcom/oplus/reflect/RefStaticObject<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/reflect/RefStaticObject;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefStaticObject"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/oplus/reflect/RefStaticObject;, "Lcom/oplus/reflect/RefStaticObject<TT;>;"
    iget-object v0, p0, Lcom/oplus/reflect/RefStaticObject;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
