.class Landroid/net/lowpan/LowpanInterface$1;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/net/lowpan/LowpanInterface;

.field final synthetic blacklist val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanInterface;

    .line 557
    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    .line 561
    if-eqz p2, :cond_0

    .line 562
    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 563
    :cond_0
    invoke-static {p1}, Landroid/net/lowpan/LowpanInterface;->-$$Nest$fgetmLooper(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 564
    new-instance p2, Landroid/os/Handler;

    invoke-static {p1}, Landroid/net/lowpan/LowpanInterface;->-$$Nest$fgetmLooper(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 566
    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    .line 568
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onConnectedChanged$1(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Z

    .line 577
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onConnectedChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onEnabledChanged$0(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Z

    .line 572
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onEnabledChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onLinkAddressAdded$8(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "la"    # Landroid/net/LinkAddress;

    .line 621
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressAdded(Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLinkAddressRemoved$9(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "la"    # Landroid/net/LinkAddress;

    .line 638
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressRemoved(Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLinkNetworkAdded$6(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Landroid/net/IpPrefix;

    .line 602
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLinkNetworkRemoved$7(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Landroid/net/IpPrefix;

    .line 607
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic blacklist lambda$onLowpanIdentityChanged$5(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;

    .line 597
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRoleChanged$3(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Ljava/lang/String;

    .line 587
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onRoleChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$4(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Ljava/lang/String;

    .line 592
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onUpChanged$2(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Z

    .line 582
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onUpChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectedChanged(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 577
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda2;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    return-void
.end method

.method public blacklist onEnabledChanged(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 572
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda5;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    return-void
.end method

.method public blacklist onLinkAddressAdded(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 614
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .local v0, "la":Landroid/net/LinkAddress;
    nop

    .line 621
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v3, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2, v0}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda8;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    return-void

    .line 615
    .end local v0    # "la":Landroid/net/LinkAddress;
    :catch_0
    move-exception v0

    .line 616
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkAddressAdded: Bad LinkAddress \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method public blacklist onLinkAddressRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 628
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .local v0, "la":Landroid/net/LinkAddress;
    nop

    .line 638
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v3, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void

    .line 629
    .end local v0    # "la":Landroid/net/LinkAddress;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkAddressRemoved: Bad LinkAddress \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method public blacklist onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 3
    .param p1, "value"    # Landroid/net/IpPrefix;

    .line 602
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda3;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method public blacklist onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 3
    .param p1, "value"    # Landroid/net/IpPrefix;

    .line 607
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method

.method public blacklist onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 3
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;

    .line 597
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda7;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
    return-void
.end method

.method public blacklist onReceiveFromCommissioner([B)V
    .locals 0
    .param p1, "packet"    # [B

    .line 644
    return-void
.end method

.method public blacklist onRoleChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 587
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method

.method public blacklist onStateChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 592
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda4;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method public blacklist onUpChanged(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 582
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1, p1}, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda9;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    return-void
.end method
