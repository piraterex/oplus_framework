.class public final Landroid/net/Ikev2VpnProfile$Builder;
.super Ljava/lang/Object;
.source "Ikev2VpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Ikev2VpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExcludeLocalRoutes:Z

.field private final blacklist mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private blacklist mIsBypassable:Z

.field private blacklist mIsMetered:Z

.field private blacklist mIsRestrictedToTestNetworks:Z

.field private blacklist mMaxMtu:I

.field private blacklist mPassword:Ljava/lang/String;

.field private blacklist mPresharedKey:[B

.field private blacklist mProxyInfo:Landroid/net/ProxyInfo;

.field private blacklist mRequiresInternetValidation:Z

.field private blacklist mRsaPrivateKey:Ljava/security/PrivateKey;

.field private final blacklist mServerAddr:Ljava/lang/String;

.field private blacklist mServerRootCaCert:Ljava/security/cert/X509Certificate;

.field private blacklist mType:I

.field private blacklist mUserCert:Ljava/security/cert/X509Certificate;

.field private final blacklist mUserIdentity:Ljava/lang/String;

.field private blacklist mUsername:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .locals 3
    .param p1, "ikeTunConnParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 770
    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 772
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 773
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 774
    const/16 v2, 0x550

    iput v2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 775
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 776
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 804
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ikeTunConnParams"

    aput-object v2, v1, v0

    const-string v0, "Required parameter was not provided: %s"

    invoke-static {p1, v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    .line 808
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "serverAddr"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 770
    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 772
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 773
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 774
    const/16 v2, 0x550

    iput v2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 775
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 776
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 787
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "serverAddr"

    aput-object v3, v2, v0

    const-string v3, "Required parameter was not provided: %s"

    invoke-static {p1, v3, v2}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "identity"

    aput-object v2, v1, v0

    invoke-static {p2, v3, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    .line 791
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 794
    return-void
.end method

.method private blacklist resetAuthParams()V
    .locals 1

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    .line 813
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 814
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    .line 815
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    .line 816
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 817
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 818
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/Ikev2VpnProfile;
    .locals 23

    .line 1115
    move-object/from16 v0, p0

    new-instance v21, Landroid/net/Ikev2VpnProfile;

    move-object/from16 v1, v21

    iget v2, v0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    iget-object v6, v0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    iget-object v7, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    iget-object v10, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    iget-object v11, v0, Landroid/net/Ikev2VpnProfile$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    iget-object v12, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    iget-boolean v13, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    iget-boolean v14, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    iget v15, v0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    move-object/from16 v22, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    move/from16 v18, v1

    iget-object v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Landroid/net/Ikev2VpnProfile;-><init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;Landroid/net/Ikev2VpnProfile-IA;)V

    return-object v21
.end method

.method public blacklist restrictToTestNetworks()Landroid/net/Ikev2VpnProfile$Builder;
    .locals 1

    .line 1079
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 1080
    return-object p0
.end method

.method public whitelist setAllowedAlgorithms(Ljava/util/List;)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Ikev2VpnProfile$Builder;"
        }
    .end annotation

    .line 1059
    .local p1, "algorithmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "algorithmNames"

    aput-object v3, v1, v2

    const-string v4, "Required parameter was not provided: %s"

    invoke-static {p1, v4, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0, v3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 1061
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smvalidateAllowedAlgorithms(Ljava/util/List;)V

    .line 1063
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 1064
    return-object p0
.end method

.method public whitelist setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 5
    .param p1, "userCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "serverRootCa"    # Ljava/security/cert/X509Certificate;

    .line 886
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "userCert"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Required parameter was not provided: %s"

    invoke-static {p1, v2, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "key"

    aput-object v4, v1, v3

    invoke-static {p2, v2, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "authDigitalSignature"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 891
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 892
    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 894
    :cond_1
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 895
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 896
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 897
    iput-object p3, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 898
    const/16 v0, 0x8

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 899
    return-object p0
.end method

.method public whitelist setAuthPsk([B)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 4
    .param p1, "psk"    # [B

    .line 919
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "psk"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Required parameter was not provided: %s"

    invoke-static {p1, v2, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "authPsk"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 922
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 923
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    .line 924
    const/4 v0, 0x7

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 925
    return-object p0
.end method

.method public whitelist setAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 5
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "serverRootCa"    # Ljava/security/cert/X509Certificate;

    .line 845
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "user"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Required parameter was not provided: %s"

    invoke-static {p1, v2, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "pass"

    aput-object v4, v1, v3

    invoke-static {p2, v2, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "authUsernamePassword"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 850
    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 852
    :cond_1
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 853
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    .line 854
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    .line 855
    iput-object p3, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 856
    const/4 v0, 0x6

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 857
    return-object p0
.end method

.method public whitelist setBypassable(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0
    .param p1, "isBypassable"    # Z

    .line 944
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 945
    return-object p0
.end method

.method public whitelist setLocalRoutesExcluded(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0
    .param p1, "excludeLocalRoutes"    # Z

    .line 1103
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 1104
    return-object p0
.end method

.method public whitelist setMaxMtu(I)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 2
    .param p1, "mtu"    # I

    .line 979
    const/16 v0, 0x500

    if-lt p1, v0, :cond_0

    .line 982
    iput p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 983
    return-object p0

    .line 980
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max MTU must be at least 1280"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMetered(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0
    .param p1, "isMetered"    # Z

    .line 1027
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 1028
    return-object p0
.end method

.method public whitelist setProxy(Landroid/net/ProxyInfo;)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 959
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 960
    return-object p0
.end method

.method public whitelist setRequiresInternetValidation(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .locals 0
    .param p1, "requiresInternetValidation"    # Z

    .line 1006
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 1007
    return-object p0
.end method
