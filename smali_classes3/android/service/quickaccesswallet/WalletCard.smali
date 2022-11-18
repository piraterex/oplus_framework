.class public final Landroid/service/quickaccesswallet/WalletCard;
.super Ljava/lang/Object;
.source "WalletCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/WalletCard$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quickaccesswallet/WalletCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCardIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mCardId:Ljava/lang/String;

.field private final blacklist mCardImage:Landroid/graphics/drawable/Icon;

.field private final blacklist mCardLabel:Ljava/lang/CharSequence;

.field private final blacklist mContentDescription:Ljava/lang/CharSequence;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;
    .locals 0

    invoke-static {p0}, Landroid/service/quickaccesswallet/WalletCard;->readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Landroid/service/quickaccesswallet/WalletCard$1;

    invoke-direct {v0}, Landroid/service/quickaccesswallet/WalletCard$1;-><init>()V

    sput-object v0, Landroid/service/quickaccesswallet/WalletCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/quickaccesswallet/WalletCard$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/service/quickaccesswallet/WalletCard$Builder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardId(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardImage(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    .line 45
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmContentDescription(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    .line 46
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmPendingIntent(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    .line 47
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardIcon(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    .line 48
    invoke-static {p1}, Landroid/service/quickaccesswallet/WalletCard$Builder;->-$$Nest$fgetmCardLabel(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/WalletCard$Builder;Landroid/service/quickaccesswallet/WalletCard-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/WalletCard;-><init>(Landroid/service/quickaccesswallet/WalletCard$Builder;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/service/quickaccesswallet/WalletCard;
    .locals 7
    .param p0, "source"    # Landroid/os/Parcel;

    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "cardId":Ljava/lang/String;
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 74
    .local v1, "cardImage":Landroid/graphics/drawable/Icon;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 75
    .local v2, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 76
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    sget-object v4, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    .line 77
    .local v4, "cardIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 78
    .local v5, "cardLabel":Ljava/lang/CharSequence;
    new-instance v6, Landroid/service/quickaccesswallet/WalletCard$Builder;

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/service/quickaccesswallet/WalletCard$Builder;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 79
    invoke-virtual {v6, v4}, Landroid/service/quickaccesswallet/WalletCard$Builder;->setCardIcon(Landroid/graphics/drawable/Icon;)Landroid/service/quickaccesswallet/WalletCard$Builder;

    move-result-object v6

    .line 80
    invoke-virtual {v6, v5}, Landroid/service/quickaccesswallet/WalletCard$Builder;->setCardLabel(Ljava/lang/CharSequence;)Landroid/service/quickaccesswallet/WalletCard$Builder;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Landroid/service/quickaccesswallet/WalletCard$Builder;->build()Landroid/service/quickaccesswallet/WalletCard;

    move-result-object v6

    .line 78
    return-object v6
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCardIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getCardId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCardImage()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getCardLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardImage:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 61
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 62
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_0
    iget-object v0, p0, Landroid/service/quickaccesswallet/WalletCard;->mCardLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 69
    return-void
.end method
