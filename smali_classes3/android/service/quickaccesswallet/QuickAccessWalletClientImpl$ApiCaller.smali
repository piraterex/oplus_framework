.class abstract Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.super Ljava/lang/Object;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ApiCaller"
.end annotation


# instance fields
.field private final blacklist mDesc:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDesc(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->mDesc:Ljava/lang/String;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->mDesc:Ljava/lang/String;

    .line 450
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist onApiError()V
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QAWalletSClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method abstract blacklist performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
