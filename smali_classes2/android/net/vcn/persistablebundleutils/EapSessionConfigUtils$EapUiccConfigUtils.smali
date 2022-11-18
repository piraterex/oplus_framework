.class Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;
.super Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;
.source "EapSessionConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EapUiccConfigUtils"
.end annotation


# static fields
.field static final blacklist APP_TYPE_KEY:Ljava/lang/String; = "APP_TYPE_KEY"

.field static final blacklist SUB_ID_KEY:Ljava/lang/String; = "SUB_ID_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;-><init>(Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;-><init>()V

    return-void
.end method

.method protected static blacklist toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapUiccConfig;)Landroid/os/PersistableBundle;
    .locals 3
    .param p0, "config"    # Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 152
    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 153
    .local v0, "result":Landroid/os/PersistableBundle;
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->getSubId()I

    move-result v1

    const-string v2, "SUB_ID_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->getAppType()I

    move-result v1

    const-string v2, "APP_TYPE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 156
    return-object v0
.end method
