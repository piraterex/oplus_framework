.class final Lcom/oplus/utils/Alog$1;
.super Lcom/oplus/utils/Alog$Logger;
.source "Alog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utils/Alog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/oplus/utils/Alog$Logger;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist d(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/oplus/utils/Alog;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/Alog$Logger;

    .line 30
    .local v1, "logger":Lcom/oplus/utils/Alog$Logger;
    invoke-virtual {v1, p1}, Lcom/oplus/utils/Alog$Logger;->d(Ljava/lang/String;)V

    .line 31
    .end local v1    # "logger":Lcom/oplus/utils/Alog$Logger;
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public blacklist d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 36
    invoke-static {}, Lcom/oplus/utils/Alog;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/Alog$Logger;

    .line 37
    .local v1, "logger":Lcom/oplus/utils/Alog$Logger;
    invoke-virtual {v1, p1, p2}, Lcom/oplus/utils/Alog$Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .end local v1    # "logger":Lcom/oplus/utils/Alog$Logger;
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public blacklist e(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/oplus/utils/Alog;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/Alog$Logger;

    .line 44
    .local v1, "logger":Lcom/oplus/utils/Alog$Logger;
    invoke-virtual {v1, p1}, Lcom/oplus/utils/Alog$Logger;->e(Ljava/lang/String;)V

    .line 45
    .end local v1    # "logger":Lcom/oplus/utils/Alog$Logger;
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public blacklist e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 50
    invoke-static {}, Lcom/oplus/utils/Alog;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/Alog$Logger;

    .line 51
    .local v1, "logger":Lcom/oplus/utils/Alog$Logger;
    invoke-virtual {v1, p1, p2}, Lcom/oplus/utils/Alog$Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v1    # "logger":Lcom/oplus/utils/Alog$Logger;
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public blacklist i(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/oplus/utils/Alog;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/Alog$Logger;

    .line 16
    .local v1, "logger":Lcom/oplus/utils/Alog$Logger;
    invoke-virtual {v1, p1}, Lcom/oplus/utils/Alog$Logger;->i(Ljava/lang/String;)V

    .line 17
    .end local v1    # "logger":Lcom/oplus/utils/Alog$Logger;
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public blacklist i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 22
    invoke-static {}, Lcom/oplus/utils/Alog;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/Alog$Logger;

    .line 23
    .local v1, "logger":Lcom/oplus/utils/Alog$Logger;
    invoke-virtual {v1, p1, p2}, Lcom/oplus/utils/Alog$Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .end local v1    # "logger":Lcom/oplus/utils/Alog$Logger;
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method protected blacklist log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 57
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not handle log method by myself"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
