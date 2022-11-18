.class public final Landroid/telecom/PhoneAccountSuggestion;
.super Ljava/lang/Object;
.source "PhoneAccountSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccountSuggestion$SuggestionReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/PhoneAccountSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REASON_FREQUENT:I = 0x2

.field public static final whitelist REASON_INTRA_CARRIER:I = 0x1

.field public static final whitelist REASON_NONE:I = 0x0

.field public static final whitelist REASON_OTHER:I = 0x4

.field public static final whitelist REASON_USER_SET:I = 0x3


# instance fields
.field private blacklist mHandle:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mReason:I

.field private blacklist mShouldAutoSelect:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Landroid/telecom/PhoneAccountSuggestion$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccountSuggestion$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccountSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-class v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mHandle:Landroid/telecom/PhoneAccountHandle;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mReason:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mShouldAutoSelect:Z

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccountSuggestion-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccountSuggestion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;IZ)V
    .locals 0
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "reason"    # I
    .param p3, "shouldAutoSelect"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/telecom/PhoneAccountSuggestion;->mHandle:Landroid/telecom/PhoneAccountHandle;

    .line 82
    iput p2, p0, Landroid/telecom/PhoneAccountSuggestion;->mReason:I

    .line 83
    iput-boolean p3, p0, Landroid/telecom/PhoneAccountSuggestion;->mShouldAutoSelect:Z

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 144
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telecom/PhoneAccountSuggestion;

    .line 146
    .local v2, "that":Landroid/telecom/PhoneAccountSuggestion;
    iget v3, p0, Landroid/telecom/PhoneAccountSuggestion;->mReason:I

    iget v4, v2, Landroid/telecom/PhoneAccountSuggestion;->mReason:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telecom/PhoneAccountSuggestion;->mShouldAutoSelect:Z

    iget-boolean v4, v2, Landroid/telecom/PhoneAccountSuggestion;->mShouldAutoSelect:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telecom/PhoneAccountSuggestion;->mHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v4, v2, Landroid/telecom/PhoneAccountSuggestion;->mHandle:Landroid/telecom/PhoneAccountHandle;

    .line 148
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 146
    :goto_0
    return v0

    .line 144
    .end local v2    # "that":Landroid/telecom/PhoneAccountSuggestion;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist getReason()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mReason:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/PhoneAccountSuggestion;->mHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/PhoneAccountSuggestion;->mReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telecom/PhoneAccountSuggestion;->mShouldAutoSelect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist shouldAutoSelect()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mShouldAutoSelect:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 136
    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-boolean v0, p0, Landroid/telecom/PhoneAccountSuggestion;->mShouldAutoSelect:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 139
    return-void
.end method
