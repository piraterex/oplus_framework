.class Landroid/telecom/TelecomManager$DeathRecipient;
.super Ljava/lang/Object;
.source "TelecomManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/TelecomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathRecipient"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 2734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/TelecomManager$DeathRecipient-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/TelecomManager$DeathRecipient;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 0

    .line 2737
    invoke-static {}, Landroid/telecom/TelecomManager;->-$$Nest$smresetServiceCache()V

    .line 2738
    return-void
.end method
