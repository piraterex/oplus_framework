.class Landroid/companion/CompanionDeviceService$Stub;
.super Landroid/companion/ICompanionDeviceService$Stub;
.source "CompanionDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final blacklist mMainHandler:Landroid/os/Handler;

.field final blacklist mService:Landroid/companion/CompanionDeviceService;

.field final synthetic blacklist this$0:Landroid/companion/CompanionDeviceService;


# direct methods
.method private constructor blacklist <init>(Landroid/companion/CompanionDeviceService;)V
    .locals 1

    .line 227
    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->this$0:Landroid/companion/CompanionDeviceService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceService$Stub;-><init>()V

    .line 228
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    .line 229
    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService$Stub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDeviceAppeared$0$android-companion-CompanionDeviceService$Stub(Landroid/companion/AssociationInfo;)V
    .locals 1
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 233
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onDeviceDisappeared$1$android-companion-CompanionDeviceService$Stub(Landroid/companion/AssociationInfo;)V
    .locals 1
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 238
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onDispatchMessage$2$android-companion-CompanionDeviceService$Stub(II[B)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B

    .line 244
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/CompanionDeviceService;->onDispatchMessage(II[B)V

    return-void
.end method

.method public blacklist onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .locals 2
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 233
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda2;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public blacklist onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .locals 2
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 238
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public blacklist onDispatchMessage(II[B)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B

    .line 243
    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceService$Stub;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method
