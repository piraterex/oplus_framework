.class public Lcom/oplus/view/OplusLayoutParams;
.super Ljava/lang/Object;
.source "OplusLayoutParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/view/OplusLayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_CUSTOM_SYSTEM_BAR:I = 0x8

.field private static final blacklist FLAG_FULL_SCREEN_WINDOW:I = 0x20

.field private static final blacklist FLAG_HAS_NAVIGATION_BAR:I = 0x2

.field private static final blacklist FLAG_HAS_STATUS_BAR:I = 0x1

.field private static final blacklist FLAG_SKIP_SYSTEM_UI_VISIBILITY:I = 0x40

.field private static final blacklist FLAG_SYSTEM_APP_WINDOW:I = 0x10

.field private static final blacklist FLAG_UPDATE_NAVIGATION_BAR:I = 0x4

.field private static final blacklist FLAG_USE_LAST_STATUS_BAR_TINT:I = 0x80


# instance fields
.field private blacklist mNavigationBarColor:I

.field private blacklist mSystemBarFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/oplus/view/OplusLayoutParams$1;

    invoke-direct {v0}, Lcom/oplus/view/OplusLayoutParams$1;-><init>()V

    sput-object v0, Lcom/oplus/view/OplusLayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    .line 60
    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    .line 60
    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    .line 69
    invoke-virtual {p0, p1}, Lcom/oplus/view/OplusLayoutParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 70
    return-void
.end method

.method private blacklist formatHex(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 220
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, " %s=#%08x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 232
    iget v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist setFlag(ZI)V
    .locals 2
    .param p1, "value"    # Z
    .param p2, "flag"    # I

    .line 224
    if-eqz p1, :cond_0

    .line 225
    iget v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    goto :goto_0

    .line 227
    :cond_0
    iget v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    .line 229
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 93
    return v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 96
    return v1

    .line 98
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 99
    return v1

    .line 101
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/oplus/view/OplusLayoutParams;

    .line 102
    .local v2, "other":Lcom/oplus/view/OplusLayoutParams;
    iget v3, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    iget v4, v2, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    if-eq v3, v4, :cond_3

    .line 103
    return v1

    .line 105
    :cond_3
    iget v3, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    iget v4, v2, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    if-eq v3, v4, :cond_4

    .line 106
    return v1

    .line 108
    :cond_4
    return v0
.end method

.method public whitelist getNavigationBarColor()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getSkipSystemUiVisibility()Z
    .locals 1

    .line 197
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/oplus/view/OplusLayoutParams;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasNavigationBar()Z
    .locals 1

    .line 157
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oplus/view/OplusLayoutParams;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasStatusBar()Z
    .locals 1

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/view/OplusLayoutParams;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isCustomSystemBar()Z
    .locals 1

    .line 173
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/oplus/view/OplusLayoutParams;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFullScreenWindow()Z
    .locals 1

    .line 189
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/oplus/view/OplusLayoutParams;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isSystemAppWindow()Z
    .locals 1

    .line 181
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/oplus/view/OplusLayoutParams;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUpdateNavigationBar()Z
    .locals 1

    .line 165
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/oplus/view/OplusLayoutParams;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUseLastStatusBarTint()Z
    .locals 1

    .line 205
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/oplus/view/OplusLayoutParams;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    .line 137
    return-void
.end method

.method public whitelist set(Lcom/oplus/view/OplusLayoutParams;)V
    .locals 1
    .param p1, "src"    # Lcom/oplus/view/OplusLayoutParams;

    .line 140
    iget v0, p1, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    .line 141
    iget v0, p1, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    iput v0, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    .line 142
    return-void
.end method

.method public whitelist setCustomSystemBar(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 169
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/OplusLayoutParams;->setFlag(ZI)V

    .line 170
    return-void
.end method

.method public whitelist setFullScreenWindow(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 185
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/OplusLayoutParams;->setFlag(ZI)V

    .line 186
    return-void
.end method

.method public whitelist setHasNavigationBar(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 153
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/OplusLayoutParams;->setFlag(ZI)V

    .line 154
    return-void
.end method

.method public whitelist setHasStatusBar(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/OplusLayoutParams;->setFlag(ZI)V

    .line 146
    return-void
.end method

.method public whitelist setNavigationBarColor(I)V
    .locals 0
    .param p1, "value"    # I

    .line 209
    iput p1, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    .line 210
    return-void
.end method

.method public whitelist setSkipSystemUiVisibility(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 193
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/OplusLayoutParams;->setFlag(ZI)V

    .line 194
    return-void
.end method

.method public whitelist setSystemAppWindow(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 177
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/OplusLayoutParams;->setFlag(ZI)V

    .line 178
    return-void
.end method

.method public whitelist setUpdateNavigationBar(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 161
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/OplusLayoutParams;->setFlag(ZI)V

    .line 162
    return-void
.end method

.method public whitelist setUseLastStatusBarTint(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 201
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/oplus/view/OplusLayoutParams;->setFlag(ZI)V

    .line 202
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " CLP["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    if-eqz v1, :cond_0

    .line 81
    const-string v2, "sysBarFlg"

    invoke-direct {p0, v1, v2}, Lcom/oplus/view/OplusLayoutParams;->formatHex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    iget v1, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    if-eqz v1, :cond_1

    .line 84
    const-string v2, "navColor"

    invoke-direct {p0, v1, v2}, Lcom/oplus/view/OplusLayoutParams;->formatHex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_1
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget v0, p0, Lcom/oplus/view/OplusLayoutParams;->mSystemBarFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/oplus/view/OplusLayoutParams;->mNavigationBarColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
