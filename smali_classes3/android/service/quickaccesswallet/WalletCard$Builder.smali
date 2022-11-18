.class public final Landroid/service/quickaccesswallet/WalletCard$Builder;
.super Ljava/lang/Object;
.source "WalletCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/WalletCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCardIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mCardId:Ljava/lang/String;

.field private blacklist mCardImage:Landroid/graphics/drawable/Icon;

.field private blacklist mCardLabel:Ljava/lang/CharSequence;

.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCardIcon(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardImage(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardImage:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardLabel(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentDescription(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "cardImage"    # Landroid/graphics/drawable/Icon;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardId:Ljava/lang/String;

    .line 202
    iput-object p2, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardImage:Landroid/graphics/drawable/Icon;

    .line 203
    iput-object p3, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mContentDescription:Ljava/lang/CharSequence;

    .line 204
    iput-object p4, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 205
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/quickaccesswallet/WalletCard;
    .locals 2

    .line 245
    new-instance v0, Landroid/service/quickaccesswallet/WalletCard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/quickaccesswallet/WalletCard;-><init>(Landroid/service/quickaccesswallet/WalletCard$Builder;Landroid/service/quickaccesswallet/WalletCard-IA;)V

    return-object v0
.end method

.method public whitelist setCardIcon(Landroid/graphics/drawable/Icon;)Landroid/service/quickaccesswallet/WalletCard$Builder;
    .locals 0
    .param p1, "cardIcon"    # Landroid/graphics/drawable/Icon;

    .line 219
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardIcon:Landroid/graphics/drawable/Icon;

    .line 220
    return-object p0
.end method

.method public whitelist setCardLabel(Ljava/lang/CharSequence;)Landroid/service/quickaccesswallet/WalletCard$Builder;
    .locals 0
    .param p1, "cardLabel"    # Ljava/lang/CharSequence;

    .line 234
    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLabel:Ljava/lang/CharSequence;

    .line 235
    return-object p0
.end method
