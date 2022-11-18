.class public Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
.super Ljava/lang/Object;
.source "LocationAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallingFeatureId:Ljava/lang/String;

.field private blacklist mCallingPackage:Ljava/lang/String;

.field private blacklist mCallingPid:I

.field private blacklist mCallingUid:I

.field private blacklist mLogAsInfo:Z

.field private blacklist mMethod:Ljava/lang/String;

.field private blacklist mMinSdkVersionForCoarse:I

.field private blacklist mMinSdkVersionForEnforcement:I

.field private blacklist mMinSdkVersionForFine:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForCoarse:I

    .line 90
    iput v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForFine:I

    .line 91
    iput v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForEnforcement:I

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mLogAsInfo:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .locals 12

    .line 190
    iget v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForCoarse:I

    if-ltz v0, :cond_3

    iget v1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForFine:I

    if-ltz v1, :cond_3

    .line 194
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    if-le v0, v2, :cond_1

    .line 196
    iget v2, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForEnforcement:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setMinSdkVersionForEnforcement must be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    :goto_0
    iget v8, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForFine:I

    iget v7, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForCoarse:I

    if-lt v8, v7, :cond_2

    .line 210
    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    iget-object v3, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingPackage:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingFeatureId:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingUid:I

    iget v6, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingPid:I

    iget-boolean v9, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mLogAsInfo:Z

    iget-object v10, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMethod:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery-IA;)V

    return-object v0

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Since fine location permission includes access to coarse location, the min sdk level for enforcement of the fine location permission must not be less than the min sdk level for enforcement of the coarse location permission."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify min sdk versions for enforcement for both coarse and fine permissions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "callingFeatureId"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public blacklist setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingPackage:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public blacklist setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "callingPid"    # I

    .line 123
    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingPid:I

    .line 124
    return-object p0
.end method

.method public blacklist setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "callingUid"    # I

    .line 115
    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingUid:I

    .line 116
    return-object p0
.end method

.method public blacklist setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "logAsInfo"    # Z

    .line 184
    iput-boolean p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mLogAsInfo:Z

    .line 185
    return-object p0
.end method

.method public blacklist setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMethod:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public blacklist setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "minSdkVersionForCoarse"    # I

    .line 140
    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForCoarse:I

    .line 141
    return-object p0
.end method

.method public blacklist setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "minSdkVersionForEnforcement"    # I

    .line 168
    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForEnforcement:I

    .line 169
    return-object p0
.end method

.method public blacklist setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .locals 0
    .param p1, "minSdkVersionForFine"    # I

    .line 157
    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForFine:I

    .line 158
    return-object p0
.end method
