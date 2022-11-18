.class public final Landroid/telecom/PhoneAccountHandle;
.super Ljava/lang/Object;
.source "PhoneAccountHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field private final greylist-max-p mComponentName:Landroid/content/ComponentName;

.field private final greylist-max-p mId:Ljava/lang/String;

.field public whitelist mSlotId:I

.field public whitelist mSubId:I

.field private final greylist-max-o mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/telecom/PhoneAccountHandle;->TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 222
    new-instance v0, Landroid/telecom/PhoneAccountHandle$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccountHandle$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/String;II)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "slotId"    # I

    .line 71
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 72
    iput p3, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I

    .line 73
    iput p4, p0, Landroid/telecom/PhoneAccountHandle;->mSlotId:I

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I

    .line 65
    iput v0, p0, Landroid/telecom/PhoneAccountHandle;->mSlotId:I

    .line 110
    invoke-direct {p0, p1, p3}, Landroid/telecom/PhoneAccountHandle;->checkParameters(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 111
    iput-object p1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    .line 112
    iput-object p2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 114
    return-void
.end method

.method private constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 237
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 239
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 237
    invoke-direct {p0, v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccountHandle;->mSlotId:I

    .line 245
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccountHandle-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist areFromSamePackage(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3
    .param p0, "a"    # Landroid/telecom/PhoneAccountHandle;
    .param p1, "b"    # Landroid/telecom/PhoneAccountHandle;

    .line 259
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 260
    .local v1, "aPackageName":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "bPackageName":Ljava/lang/String;
    :cond_1
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private greylist-max-o checkParameters(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 212
    const-string v0, "PhoneAccountHandle"

    if-nez p1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "PhoneAccountHandle has been created with null ComponentName!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :cond_0
    if-nez p2, :cond_1

    .line 217
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "PhoneAccountHandle has been created with null UserHandle!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 182
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 184
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 186
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 187
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->TELEPHONY_COMPONENT_NAME:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 201
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    iget v0, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Landroid/telecom/PhoneAccountHandle;->mSlotId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return-void
.end method
