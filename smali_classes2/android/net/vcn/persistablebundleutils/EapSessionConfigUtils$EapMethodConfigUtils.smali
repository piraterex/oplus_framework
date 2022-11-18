.class Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;
.super Ljava/lang/Object;
.source "EapSessionConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EapMethodConfigUtils"
.end annotation


# static fields
.field private static final blacklist METHOD_TYPE:Ljava/lang/String; = "METHOD_TYPE"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;-><init>()V

    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)Landroid/os/PersistableBundle;
    .locals 3
    .param p0, "config"    # Landroid/net/eap/EapSessionConfig$EapMethodConfig;

    .line 140
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 141
    .local v0, "result":Landroid/os/PersistableBundle;
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->getMethodType()I

    move-result v1

    const-string v2, "METHOD_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 142
    return-object v0
.end method
