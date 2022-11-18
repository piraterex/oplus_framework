.class public final Lcom/oplus/content/OplusRuleInfo;
.super Ljava/lang/Object;
.source "OplusRuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist BLACK_STR:Ljava/lang/String; = "black"

.field private static final blacklist CHOICE_BLACK:I = 0x1

.field private static final blacklist CHOICE_INVALID:I = -0x1

.field private static final blacklist CHOICE_WHITE:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/content/OplusRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist DEBUG:Z = false

.field private static blacklist DEBUG_PANIC:Z = false

.field private static final blacklist INVALID_STR:Ljava/lang/String; = "invalid"

.field private static final blacklist NAME_STR:Ljava/lang/String; = "name"

.field private static final blacklist TAG:Ljava/lang/String; = "CII_OplusRuleInfo"

.field private static final blacklist TAG_INTENT_FILETER:Ljava/lang/String; = "intent-filter"

.field private static final blacklist TAG_SOURCE_PKG_BLACK:Ljava/lang/String; = "source-pkg-black"

.field private static final blacklist TAG_SOURCE_PKG_CHOICE:Ljava/lang/String; = "source-pkg-choice"

.field private static final blacklist TAG_SOURCE_PKG_WHITE:Ljava/lang/String; = "source-pkg-white"

.field private static final blacklist TAG_TARGET_CPN:Ljava/lang/String; = "target-cpn"

.field private static final blacklist WHITE_STR:Ljava/lang/String; = "white"


# instance fields
.field public blacklist mIntentFilter:Landroid/content/IntentFilter;

.field public blacklist mSourcePkgBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mSourcePkgChoice:I

.field public blacklist mSourcePkgWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mTargetComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 64
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/content/OplusRuleInfo;->DEBUG_PANIC:Z

    .line 65
    sput-boolean v0, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    .line 267
    new-instance v0, Lcom/oplus/content/OplusRuleInfo$1;

    invoke-direct {v0}, Lcom/oplus/content/OplusRuleInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusRuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .local v0, "length":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    .line 190
    if-lez v0, :cond_0

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    iget-object v2, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    .line 200
    if-lez v0, :cond_1

    .line 201
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 202
    iget-object v2, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    .line 208
    if-lez v0, :cond_2

    .line 209
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 210
    iget-object v2, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 214
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    iput-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 217
    :cond_3
    return-void
.end method

.method public constructor blacklist <init>(Lcom/oplus/content/OplusRuleInfo;)V
    .locals 2
    .param p1, "cri"    # Lcom/oplus/content/OplusRuleInfo;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 102
    if-eqz p1, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    .line 104
    iget v0, p1, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    iput v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p1, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 109
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;ILjava/util/List;Ljava/util/List;Landroid/content/IntentFilter;)V
    .locals 1
    .param p2, "choice"    # I
    .param p5, "intentfilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .line 112
    .local p1, "targetCpnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "sourcePkgWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sourcePkgBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 113
    iput-object p1, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    .line 114
    iput p2, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 115
    iput-object p3, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    .line 116
    iput-object p4, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    .line 117
    iput-object p5, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 118
    return-void
.end method

.method private blacklist addSourcePkgBlack(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 386
    sget-boolean v0, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSourcePkgBlack name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CII_OplusRuleInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_2
    return-void
.end method

.method private blacklist addSourcePkgWhite(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 374
    sget-boolean v0, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSourcePkgWhite name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CII_OplusRuleInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_2
    return-void
.end method

.method private blacklist addTargetCpn(Ljava/lang/String;)V
    .locals 2
    .param p1, "cpn"    # Ljava/lang/String;

    .line 355
    sget-boolean v0, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTargetCpn cpn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CII_OplusRuleInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_2
    return-void
.end method

.method private static blacklist getIntByChoice(Ljava/lang/String;)I
    .locals 1
    .param p0, "choice"    # Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "white"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    const-string v0, "black"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_1
    const-string v0, "invalid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist getStringByChoice(I)Ljava/lang/String;
    .locals 1
    .param p0, "choice"    # I

    .line 72
    const-string v0, "invalid"

    packed-switch p0, :pswitch_data_0

    .line 80
    return-object v0

    .line 78
    :pswitch_0
    const-string v0, "black"

    return-object v0

    .line 76
    :pswitch_1
    const-string/jumbo v0, "white"

    return-object v0

    .line 74
    :pswitch_2
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist matchIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, "match":Z
    const/4 v1, 0x1

    .line 167
    .local v1, "matchAction":Z
    const/4 v2, 0x1

    .line 168
    .local v2, "matchScheme":Z
    iget-object v3, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-lez v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v1

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-lez v3, :cond_2

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 176
    :cond_1
    const/4 v2, 0x0

    .line 180
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 181
    sget-boolean v3, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "matchIntent matchAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matchScheme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CII_OplusRuleInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_4
    return v0
.end method

.method private blacklist matchSourcePkg(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "match":Z
    iget v1, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 145
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 149
    iget-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 150
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    .line 156
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "matchSourcePkg callingPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " choice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 158
    invoke-static {v2}, Lcom/oplus/content/OplusRuleInfo;->getStringByChoice(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " match = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string v2, "CII_OplusRuleInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    return v0
.end method

.method private blacklist matchTargetCpn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cpn"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "match":Z
    iget-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :cond_0
    sget-boolean v1, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "matchTargetCpn cpn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "match = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CII_OplusRuleInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    return v0
.end method

.method public static blacklist setDebugEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 68
    sput-boolean p0, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    .line 69
    return-void
.end method

.method private blacklist setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .line 398
    sget-boolean v0, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntentFilter filter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CII_OplusRuleInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    iput-object p1, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 402
    return-void
.end method

.method private blacklist setSourcePkgChoice(Ljava/lang/String;)V
    .locals 2
    .param p1, "choice"    # Ljava/lang/String;

    .line 367
    sget-boolean v0, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSourcePkgChoice choice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CII_OplusRuleInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    invoke-static {p1}, Lcom/oplus/content/OplusRuleInfo;->getIntByChoice(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    .line 371
    return-void
.end method

.method private blacklist toShortString(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .line 412
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    const-string v1, "] "

    const-string v2, " "

    if-eqz v0, :cond_1

    .line 413
    const-string v0, " targetcpn = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 415
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " choice = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    invoke-static {v3}, Lcom/oplus/content/OplusRuleInfo;->getStringByChoice(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 423
    const-string v0, " sourcewhite = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 425
    .restart local v3    # "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 427
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 430
    const-string v0, " sourceblack = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 432
    .restart local v3    # "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_2

    .line 434
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_6

    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 442
    const-string v0, "  "

    .line 443
    .local v0, "subPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 447
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 448
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetCpn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Choice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    invoke-static {v2}, Lcom/oplus/content/OplusRuleInfo;->getStringByChoice(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 455
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sourcePkgWhite = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 461
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 462
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sourcePkgBlack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_2

    .line 466
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    const-string v1, "Intent-Filter:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_3

    .line 469
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 471
    :cond_3
    return-void
.end method

.method public blacklist needIntercept(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "cpn"    # Ljava/lang/String;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "intercept":Z
    invoke-direct {p0, p1}, Lcom/oplus/content/OplusRuleInfo;->matchTargetCpn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/oplus/content/OplusRuleInfo;->matchSourcePkg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-direct {p0, p3}, Lcom/oplus/content/OplusRuleInfo;->matchIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 124
    sget-boolean v1, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needIntercept intercept = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CII_OplusRuleInfo"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    return v0
.end method

.method public blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 319
    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .line 320
    .local v1, "type":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v1, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 322
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_9

    .line 323
    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 325
    goto :goto_0

    .line 327
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "tagName":Ljava/lang/String;
    sget-boolean v3, Lcom/oplus/content/OplusRuleInfo;->DEBUG:Z

    const-string v4, "CII_OplusRuleInfo"

    if-eqz v3, :cond_3

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readFromXml tagName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_3
    const-string/jumbo v3, "target-cpn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "name"

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 332
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/oplus/content/OplusRuleInfo;->addTargetCpn(Ljava/lang/String;)V

    .line 334
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    :cond_4
    const-string/jumbo v3, "source-pkg-choice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 335
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .restart local v3    # "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/oplus/content/OplusRuleInfo;->setSourcePkgChoice(Ljava/lang/String;)V

    .line 337
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    :cond_5
    const-string/jumbo v3, "source-pkg-white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 338
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .restart local v3    # "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/oplus/content/OplusRuleInfo;->addSourcePkgWhite(Ljava/lang/String;)V

    .line 340
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    :cond_6
    const-string/jumbo v3, "source-pkg-black"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 341
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .restart local v3    # "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/oplus/content/OplusRuleInfo;->addSourcePkgBlack(Ljava/lang/String;)V

    .line 343
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    :cond_7
    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 344
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    .local v3, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 346
    invoke-direct {p0, v3}, Lcom/oplus/content/OplusRuleInfo;->setIntentFilter(Landroid/content/IntentFilter;)V

    .line 347
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto :goto_1

    .line 348
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag parsing OplusRuleInfo : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 351
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 352
    :cond_9
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 407
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/oplus/content/OplusRuleInfo;->toShortString(Ljava/lang/StringBuilder;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 227
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 229
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 231
    iget-object v3, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    :goto_1
    iget v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 241
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 243
    iget-object v3, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 245
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_2
    goto :goto_3

    .line 246
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    :goto_3
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 251
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_4

    .line 253
    iget-object v3, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 255
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_4
    goto :goto_5

    .line 256
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    :goto_5
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_6

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 263
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    :goto_6
    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mTargetComponentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 282
    .local v3, "cpn":Ljava/lang/String;
    const-string/jumbo v4, "target-cpn"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    .end local v3    # "cpn":Ljava/lang/String;
    goto :goto_0

    .line 288
    :cond_0
    const-string/jumbo v0, "source-pkg-choice"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    iget v3, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgChoice:I

    invoke-static {v3}, Lcom/oplus/content/OplusRuleInfo;->getStringByChoice(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 294
    .local v3, "pkgName":Ljava/lang/String;
    const-string/jumbo v4, "source-pkg-white"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    .end local v3    # "pkgName":Ljava/lang/String;
    goto :goto_1

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mSourcePkgBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .restart local v3    # "pkgName":Ljava/lang/String;
    const-string/jumbo v4, "source-pkg-black"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    .end local v3    # "pkgName":Ljava/lang/String;
    goto :goto_2

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_3

    .line 309
    const-string v0, "intent-filter"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    iget-object v1, p0, Lcom/oplus/content/OplusRuleInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 311
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    :cond_3
    return-void
.end method
