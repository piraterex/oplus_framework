.class public Landroid/view/OplusBaseLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "OplusBaseLayoutParams.java"


# static fields
.field public static final blacklist DEFAULT_STATUS_BAR:I = 0x0

.field public static final blacklist DISABLE_STATUS_BAR:I = 0x1

.field public static final blacklist ENABLE_STATUS_BAR:I = 0x2

.field public static final blacklist FLAG_DISABLE_STATUS_BAR:I = 0x100000

.field public static final blacklist FLAG_ENABLE_STATUS_BAR:I = 0x200000

.field public static final blacklist FLAG_IGNORE_HOME_KEY:I = 0x2000000

.field public static final blacklist FLAG_IGNORE_HOME_MENU:I = 0x1000000

.field public static final blacklist FLAG_IMENU_KEY:I = 0x4000000

.field public static final blacklist IGNORE_HOME_KEY:I = 0x2

.field public static final blacklist IGNORE_HOME_MENU_KEY:I = 0x1

.field public static final blacklist IGNORE_MENU_KEY:I = 0x3

.field public static final blacklist OPLUS_FLAG_WINDOW_DEFAULT:I = 0x0

.field public static final blacklist OPLUS_FLAG_WINDOW_USER_DEFINED_TOAST:I = 0x1

.field public static final blacklist PRIVATE_FLAG_BOTTOM_ALERT_DIALOG:I = 0x1000000

.field public static final blacklist PRIVATE_FLAG_NAVIGATION_BAR_LIGHT:I = -0x80000000

.field public static final blacklist TYPE_DRAG_SCREEN_BACKGROUND:I = 0x8fd

.field public static final blacklist TYPE_DRAG_SCREEN_FOREGROUND:I = 0x8fe

.field public static final blacklist UNSET_ANY_KEY:I


# instance fields
.field public whitelist ignoreHomeMenuKey:I

.field public whitelist isDisableStatusBar:I

.field public final blacklist mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

.field public blacklist navigationBarColor:I

.field public blacklist navigationBarVisibility:I

.field public blacklist oplusFlags:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I

    .line 93
    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    .line 113
    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->navigationBarVisibility:I

    .line 117
    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->navigationBarColor:I

    .line 133
    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    .line 140
    new-instance v0, Lcom/oplus/view/OplusLayoutParams;

    invoke-direct {v0}, Lcom/oplus/view/OplusLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    .line 147
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I

    .line 93
    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    .line 113
    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->navigationBarVisibility:I

    .line 117
    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->navigationBarColor:I

    .line 133
    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    .line 140
    new-instance v0, Lcom/oplus/view/OplusLayoutParams;

    invoke-direct {v0}, Lcom/oplus/view/OplusLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    .line 154
    return-void
.end method


# virtual methods
.method public final blacklist copyFrom(Landroid/view/OplusBaseLayoutParams;)I
    .locals 3
    .param p1, "o"    # Landroid/view/OplusBaseLayoutParams;

    .line 195
    const/4 v0, 0x0

    .line 198
    .local v0, "changes":I
    iget v1, p0, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I

    iget v2, p1, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I

    if-eq v1, v2, :cond_0

    .line 199
    iput v2, p0, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I

    .line 201
    :cond_0
    iget v1, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    iget v2, p1, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    if-eq v1, v2, :cond_1

    .line 202
    iput v2, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    .line 207
    :cond_1
    iget-object v1, p0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    iget-object v2, p1, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, v2}, Lcom/oplus/view/OplusLayoutParams;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 208
    iget-object v1, p0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    iget-object v2, p1, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, v2}, Lcom/oplus/view/OplusLayoutParams;->set(Lcom/oplus/view/OplusLayoutParams;)V

    .line 209
    or-int/lit16 v0, v0, 0x4000

    .line 214
    :cond_2
    iget v1, p0, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    iget v2, p1, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    if-eq v1, v2, :cond_3

    .line 215
    iput v2, p0, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    .line 218
    :cond_3
    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    .line 184
    iget-object v0, p0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v0, p1}, Lcom/oplus/view/OplusLayoutParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    .line 189
    return-void
.end method

.method public blacklist toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    if-eqz v1, :cond_0

    .line 227
    const-string v1, " isDisableStatusBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    :cond_0
    iget-object v1, p0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    iget v1, p0, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    if-eqz v1, :cond_1

    .line 235
    const-string v1, " oplusFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 162
    iget v0, p0, Landroid/view/OplusBaseLayoutParams;->ignoreHomeMenuKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/view/OplusBaseLayoutParams;->isDisableStatusBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/view/OplusLayoutParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    iget v0, p0, Landroid/view/OplusBaseLayoutParams;->oplusFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return-void
.end method
