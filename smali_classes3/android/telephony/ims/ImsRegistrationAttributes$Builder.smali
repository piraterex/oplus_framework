.class public final Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
.super Ljava/lang/Object;
.source "ImsRegistrationAttributes.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRegistrationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRegistrationTech:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "registrationTech"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    .line 75
    iput p1, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    .line 76
    return-void
.end method

.method private static blacklist getAttributeFlags(I)I
    .locals 2
    .param p0, "imsRadioTech"    # I

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "attributes":I
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 118
    or-int/lit8 v0, v0, 0x1

    .line 120
    :cond_0
    return v0
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ims/ImsRegistrationAttributes;
    .locals 5

    .line 106
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget v1, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    .line 107
    invoke-static {v1}, Landroid/telephony/ims/RegistrationManager;->getAccessType(I)I

    move-result v2

    iget v3, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mRegistrationTech:I

    .line 108
    invoke-static {v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->getAttributeFlags(I)I

    move-result v3

    iget-object v4, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;)V

    .line 106
    return-object v0
.end method

.method public whitelist setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/ImsRegistrationAttributes$Builder;"
        }
    .end annotation

    .line 95
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->mFeatureTags:Ljava/util/Set;

    .line 99
    return-object p0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature tag set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
