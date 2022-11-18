.class Landroid/net/lowpan/LowpanManager$2;
.super Landroid/net/lowpan/ILowpanManagerListener$Stub;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/net/lowpan/LowpanManager;

.field final synthetic blacklist val$cb:Landroid/net/lowpan/LowpanManager$Callback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanManager;

    .line 254
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanManagerListener$Stub;-><init>()V

    .line 258
    if-eqz p2, :cond_0

    .line 259
    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {p1}, Landroid/net/lowpan/LowpanManager;->-$$Nest$fgetmLooper(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 261
    new-instance p2, Landroid/os/Handler;

    invoke-static {p1}, Landroid/net/lowpan/LowpanManager;->-$$Nest$fgetmLooper(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 263
    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    .line 265
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onInterfaceAdded$0$android-net-lowpan-LowpanManager$2(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;
    .param p2, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;

    .line 271
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    .line 273
    .local v0, "iface":Landroid/net/lowpan/LowpanInterface;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p2, v0}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceAdded(Landroid/net/lowpan/LowpanInterface;)V

    .line 276
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onInterfaceRemoved$1$android-net-lowpan-LowpanManager$2(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;
    .param p2, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;

    .line 285
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanManager;->getInterfaceNoCreate(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    .line 287
    .local v0, "iface":Landroid/net/lowpan/LowpanInterface;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p2, v0}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceRemoved(Landroid/net/lowpan/LowpanInterface;)V

    .line 290
    :cond_0
    return-void
.end method

.method public blacklist onInterfaceAdded(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 2
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;

    .line 269
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    new-instance v1, Landroid/net/lowpan/LowpanManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Landroid/net/lowpan/LowpanManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    move-object v0, v1

    .line 278
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method public blacklist onInterfaceRemoved(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 2
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;

    .line 283
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    new-instance v1, Landroid/net/lowpan/LowpanManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Landroid/net/lowpan/LowpanManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    move-object v0, v1

    .line 292
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method
