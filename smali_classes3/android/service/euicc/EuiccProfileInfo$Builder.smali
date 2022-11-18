.class public final Landroid/service/euicc/EuiccProfileInfo$Builder;
.super Ljava/lang/Object;
.source "EuiccProfileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/EuiccProfileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAccessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

.field private greylist-max-o mIccid:Ljava/lang/String;

.field private greylist-max-o mNickname:Ljava/lang/String;

.field private greylist-max-o mPolicyRules:I

.field private greylist-max-o mProfileClass:I

.field private greylist-max-o mProfileName:Ljava/lang/String;

.field private greylist-max-o mServiceProviderName:Ljava/lang/String;

.field private greylist-max-o mState:I


# direct methods
.method public constructor whitelist <init>(Landroid/service/euicc/EuiccProfileInfo;)V
    .locals 1
    .param p1, "baseProfile"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmIccid(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    .line 229
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmNickname(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mNickname:Ljava/lang/String;

    .line 230
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmServiceProviderName(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mServiceProviderName:Ljava/lang/String;

    .line 231
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmProfileName(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileName:Ljava/lang/String;

    .line 232
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmProfileClass(Landroid/service/euicc/EuiccProfileInfo;)I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileClass:I

    .line 233
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmState(Landroid/service/euicc/EuiccProfileInfo;)I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mState:I

    .line 234
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmCarrierIdentifier(Landroid/service/euicc/EuiccProfileInfo;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 235
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmPolicyRules(Landroid/service/euicc/EuiccProfileInfo;)I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mPolicyRules:I

    .line 236
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmAccessRules(Landroid/service/euicc/EuiccProfileInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->-$$Nest$fgetmAccessRules(Landroid/service/euicc/EuiccProfileInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mAccessRules:Ljava/util/List;

    .line 239
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    .line 225
    return-void

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iccid contains invalid characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/euicc/EuiccProfileInfo;
    .locals 12

    .line 243
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Landroid/service/euicc/EuiccProfileInfo;

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mNickname:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mServiceProviderName:Ljava/lang/String;

    iget-object v5, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileName:Ljava/lang/String;

    iget v6, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileClass:I

    iget v7, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mState:I

    iget-object v8, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    iget v9, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mPolicyRules:I

    iget-object v10, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mAccessRules:Ljava/util/List;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/service/euicc/EuiccProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/service/carrier/CarrierIdentifier;ILjava/util/List;Landroid/service/euicc/EuiccProfileInfo-IA;)V

    return-object v0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ICCID must be set for a profile."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCarrierIdentifier(Landroid/service/carrier/CarrierIdentifier;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # Landroid/service/carrier/CarrierIdentifier;

    .line 299
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 300
    return-object p0
.end method

.method public whitelist setIccid(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    .line 264
    return-object p0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iccid contains invalid characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNickname(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 269
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mNickname:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public whitelist setPolicyRules(I)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 305
    iput p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mPolicyRules:I

    .line 306
    return-object p0
.end method

.method public whitelist setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 287
    iput p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileClass:I

    .line 288
    return-object p0
.end method

.method public whitelist setProfileName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileName:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public whitelist setServiceProviderName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 275
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mServiceProviderName:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public whitelist setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 293
    iput p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mState:I

    .line 294
    return-object p0
.end method

.method public whitelist setUiccAccessRule(Ljava/util/List;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)",
            "Landroid/service/euicc/EuiccProfileInfo$Builder;"
        }
    .end annotation

    .line 311
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mAccessRules:Ljava/util/List;

    .line 312
    return-object p0
.end method
