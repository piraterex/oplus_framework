.class public Landroid/hardware/biometrics/PromptInfo;
.super Ljava/lang/Object;
.source "PromptInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/PromptInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllowBackgroundAuthentication:Z

.field private blacklist mAllowedSensorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuthenticators:I

.field private blacklist mConfirmationRequested:Z

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialAllowed:Z

.field private blacklist mDeviceCredentialDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialTitle:Ljava/lang/CharSequence;

.field private blacklist mDisallowBiometricsIfPolicyExists:Z

.field private blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsForLegacyFingerprintManager:Z

.field private blacklist mNegativeButtonText:Ljava/lang/CharSequence;

.field private blacklist mReceiveSystemEvents:Z

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mUseDefaultTitle:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/hardware/biometrics/PromptInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 53
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    .line 69
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist containsPrivateApiConfigurations()Z
    .locals 2

    .line 127
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 128
    return v1

    .line 129
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    if-eqz v0, :cond_1

    .line 130
    return v1

    .line 131
    :cond_1
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 132
    return v1

    .line 133
    :cond_2
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 134
    return v1

    .line 135
    :cond_3
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 136
    return v1

    .line 137
    :cond_4
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    if-eqz v0, :cond_5

    .line 138
    return v1

    .line 140
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist containsTestConfigurations()Z
    .locals 3

    .line 114
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-nez v0, :cond_0

    .line 117
    return v1

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    return v2

    .line 120
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_2

    .line 121
    return v2

    .line 123
    :cond_2
    return v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowedSensorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAuthenticators()I
    .locals 1

    .line 266
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    return v0
.end method

.method public blacklist getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    return v0
.end method

.method public blacklist isConfirmationRequested()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    return v0
.end method

.method public blacklist isDeviceCredentialAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    return v0
.end method

.method public blacklist isDisallowBiometricsIfPolicyExists()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    return v0
.end method

.method public blacklist isForLegacyFingerprintManager()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    return v0
.end method

.method public blacklist isIgnoreEnrollmentState()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    return v0
.end method

.method public blacklist isReceiveSystemEvents()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    return v0
.end method

.method public blacklist isUseDefaultTitle()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    return v0
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .line 203
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    .line 204
    return-void
.end method

.method public blacklist setAllowedSensorIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "sensorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    return-void
.end method

.method public blacklist setAuthenticators(I)V
    .locals 0
    .param p1, "authenticators"    # I

    .line 186
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    .line 187
    return-void
.end method

.method public blacklist setConfirmationRequested(Z)V
    .locals 0
    .param p1, "confirmationRequested"    # Z

    .line 178
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 179
    return-void
.end method

.method public blacklist setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 158
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    .line 159
    return-void
.end method

.method public blacklist setDeviceCredentialAllowed(Z)V
    .locals 0
    .param p1, "deviceCredentialAllowed"    # Z

    .line 182
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    .line 183
    return-void
.end method

.method public blacklist setDeviceCredentialDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "deviceCredentialDescription"    # Ljava/lang/CharSequence;

    .line 170
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    .line 171
    return-void
.end method

.method public blacklist setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "deviceCredentialSubtitle"    # Ljava/lang/CharSequence;

    .line 166
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    .line 167
    return-void
.end method

.method public blacklist setDeviceCredentialTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "deviceCredentialTitle"    # Ljava/lang/CharSequence;

    .line 162
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    .line 163
    return-void
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)V
    .locals 0
    .param p1, "disallowBiometricsIfPolicyExists"    # Z

    .line 190
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    .line 191
    return-void
.end method

.method public blacklist setIgnoreEnrollmentState(Z)V
    .locals 0
    .param p1, "ignoreEnrollmentState"    # Z

    .line 207
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    .line 208
    return-void
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)V
    .locals 2
    .param p1, "sensorId"    # I

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 212
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public blacklist setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .line 174
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 175
    return-void
.end method

.method public blacklist setReceiveSystemEvents(Z)V
    .locals 0
    .param p1, "receiveSystemEvents"    # Z

    .line 194
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    .line 195
    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 154
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    .line 155
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 146
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    .line 147
    return-void
.end method

.method public blacklist setUseDefaultTitle(Z)V
    .locals 0
    .param p1, "useDefaultTitle"    # Z

    .line 150
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    .line 151
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 95
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 96
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 102
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 108
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    return-void
.end method
