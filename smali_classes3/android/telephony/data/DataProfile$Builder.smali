.class public final Landroid/telephony/data/DataProfile$Builder;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mApn:Ljava/lang/String;

.field private blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private blacklist mAuthType:I

.field private blacklist mBearerBitmask:I

.field private blacklist mEnabled:Z

.field private blacklist mMtuV4:I

.field private blacklist mMtuV6:I

.field private blacklist mPassword:Ljava/lang/String;

.field private blacklist mPersistent:Z

.field private blacklist mPreferred:Z

.field private blacklist mProfileId:I

.field private blacklist mProtocolType:I

.field private blacklist mRoamingProtocolType:I

.field private blacklist mSupportedApnTypesBitmask:I

.field private blacklist mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

.field private blacklist mType:I

.field private blacklist mUserName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmApnSetting(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/ApnSetting;
    .locals 0

    iget-object p0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferred(Landroid/telephony/data/DataProfile$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrafficDescriptor(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/TrafficDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 582
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/DataProfile;
    .locals 2

    .line 840
    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 842
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 843
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 844
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    .line 845
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    .line 846
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 847
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    .line 848
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 849
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    .line 850
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    .line 851
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 852
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    .line 853
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    .line 854
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    .line 855
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    .line 856
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 860
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 861
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APN setting and traffic descriptor can\'t be both null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_2
    :goto_0
    new-instance v0, Landroid/telephony/data/DataProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/telephony/data/DataProfile$Builder;Landroid/telephony/data/DataProfile-IA;)V

    return-object v0
.end method

.method public whitelist enable(Z)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 688
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 689
    return-object p0
.end method

.method public whitelist setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 610
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 611
    return-object p0
.end method

.method public whitelist setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 816
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 817
    return-object p0
.end method

.method public whitelist setAuthType(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "authType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    .line 639
    return-object p0
.end method

.method public whitelist setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "bearerBitmask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    .line 732
    return-object p0
.end method

.method public whitelist setMtu(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 746
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 747
    return-object p0
.end method

.method public whitelist setMtuV4(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 761
    return-object p0
.end method

.method public whitelist setMtuV6(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 774
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    .line 775
    return-object p0
.end method

.method public whitelist setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    .line 667
    return-object p0
.end method

.method public whitelist setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    .line 803
    return-object p0
.end method

.method public whitelist setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "isPreferred"    # Z

    .line 787
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    .line 788
    return-object p0
.end method

.method public whitelist setProfileId(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "profileId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 596
    return-object p0
.end method

.method public whitelist setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "protocolType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    .line 625
    return-object p0
.end method

.method public whitelist setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "protocolType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 716
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    .line 717
    return-object p0
.end method

.method public whitelist setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "supportedApnTypesBitmask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    .line 703
    return-object p0
.end method

.method public whitelist setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;

    .line 830
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 831
    return-object p0
.end method

.method public whitelist setType(I)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "type"    # I

    .line 677
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    .line 678
    return-object p0
.end method

.method public whitelist setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    .line 653
    return-object p0
.end method
