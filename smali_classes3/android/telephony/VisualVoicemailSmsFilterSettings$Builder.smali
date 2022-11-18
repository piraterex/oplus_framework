.class public Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSmsFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mClientPrefix:Ljava/lang/String;

.field private greylist-max-o mDestinationPort:I

.field private greylist-max-o mOriginatingNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientPrefix(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestinationPort(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginatingNumbers(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "//VVM"

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->DEFAULT_ORIGINATING_NUMBERS:Ljava/util/List;

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 2

    .line 79
    new-instance v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings;-><init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;Landroid/telephony/VisualVoicemailSmsFilterSettings-IA;)V

    return-object v0
.end method

.method public whitelist setClientPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 2
    .param p1, "clientPrefix"    # Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_0

    .line 90
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mClientPrefix:Ljava/lang/String;

    .line 91
    return-object p0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client prefix cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDestinationPort(I)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 0
    .param p1, "destinationPort"    # I

    .line 114
    iput p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mDestinationPort:I

    .line 115
    return-object p0
.end method

.method public whitelist setOriginatingNumbers(Ljava/util/List;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;"
        }
    .end annotation

    .line 100
    .local p1, "originatingNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mOriginatingNumbers:Ljava/util/List;

    .line 104
    return-object p0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Originating numbers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setPackageName(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->mPackageName:Ljava/lang/String;

    .line 125
    return-object p0
.end method
