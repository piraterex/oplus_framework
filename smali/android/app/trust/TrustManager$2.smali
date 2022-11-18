.class Landroid/app/trust/TrustManager$2;
.super Landroid/os/Handler;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/trust/TrustManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/trust/TrustManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 263
    iput-object p1, p0, Landroid/app/trust/TrustManager$2;->this$0:Landroid/app/trust/TrustManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 276
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 277
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/TrustManager$TrustListener;

    invoke-interface {v1, v0}, Landroid/app/trust/TrustManager$TrustListener;->onTrustError(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 273
    .end local v0    # "message":Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/trust/TrustManager$TrustListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/app/trust/TrustManager$TrustListener;->onTrustManagedChanged(ZI)V

    .line 274
    goto :goto_3

    .line 268
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "initiatedByUser"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 269
    .local v0, "flags":I
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/trust/TrustManager$TrustListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "grantedMessages"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 269
    invoke-interface {v3, v1, v2, v0, v4}, Landroid/app/trust/TrustManager$TrustListener;->onTrustChanged(ZIILjava/util/List;)V

    .line 271
    nop

    .line 279
    .end local v0    # "flags":I
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
