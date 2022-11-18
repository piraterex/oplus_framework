.class public final Landroid/app/Notification$WearableExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final greylist-max-o DEFAULT_FLAGS:I = 0x1

.field private static final greylist-max-o DEFAULT_GRAVITY:I = 0x50

.field private static final greylist-max-o EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final greylist-max-o FLAG_BIG_PICTURE_AMBIENT:I = 0x20

.field private static final greylist-max-o FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final greylist-max-o FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final greylist-max-o FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY:I = 0x40

.field private static final greylist-max-o FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final greylist-max-o FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final greylist-max-o FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final greylist-max-o KEY_ACTIONS:Ljava/lang/String; = "actions"

.field static final greylist-max-o KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final greylist-max-o KEY_BRIDGE_TAG:Ljava/lang/String; = "bridgeTag"

.field private static final greylist-max-o KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final greylist-max-o KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final greylist-max-o KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final greylist-max-o KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final greylist-max-o KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final greylist-max-o KEY_DISMISSAL_ID:Ljava/lang/String; = "dismissalId"

.field static final greylist-max-o KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final greylist-max-o KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final greylist-max-o KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final greylist-max-o KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final whitelist SCREEN_TIMEOUT_LONG:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCREEN_TIMEOUT_SHORT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_FULL_SCREEN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_LARGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_MEDIUM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_SMALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_XSMALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private greylist-max-o mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBackground:Landroid/graphics/Bitmap;

.field private greylist-max-o mBridgeTag:Ljava/lang/String;

.field private greylist-max-o mContentActionIndex:I

.field private greylist-max-o mContentIcon:I

.field private greylist-max-o mContentIconGravity:I

.field private greylist-max-o mCustomContentHeight:I

.field private greylist-max-o mCustomSizePreset:I

.field private greylist-max-o mDismissalId:Ljava/lang/String;

.field private greylist-max-o mDisplayIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mGravity:I

.field private greylist-max-o mHintScreenTimeout:I

.field private greylist-max-o mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 11102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 11084
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 11086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 11089
    const v0, 0x800005

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 11090
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 11091
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 11093
    const/16 v0, 0x50

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 11103
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification;)V
    .locals 9
    .param p1, "notif"    # Landroid/app/Notification;

    .line 11105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 11084
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 11086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 11089
    const v1, 0x800005

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 11090
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 11091
    const/4 v3, 0x0

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 11093
    const/16 v4, 0x50

    iput v4, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 11106
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.wearable.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 11107
    .local v5, "wearableBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 11108
    const-string v6, "actions"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 11109
    .local v6, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    if-eqz v6, :cond_0

    .line 11110
    iget-object v7, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11113
    :cond_0
    const-string v7, "flags"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 11114
    const-class v0, Landroid/app/PendingIntent;

    const-string v7, "displayIntent"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 11117
    const-class v0, Landroid/app/Notification;

    const-string/jumbo v7, "pages"

    invoke-static {v5, v7, v0}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/app/Notification;

    .line 11119
    .local v0, "pages":[Landroid/app/Notification;
    if-eqz v0, :cond_1

    .line 11120
    iget-object v7, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11123
    :cond_1
    const-class v7, Landroid/graphics/Bitmap;

    const-string v8, "background"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iput-object v7, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 11124
    const-string v7, "contentIcon"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 11125
    const-string v7, "contentIconGravity"

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 11127
    const-string v1, "contentActionIndex"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 11129
    const-string v1, "customSizePreset"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 11131
    const-string v1, "customContentHeight"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 11132
    const-string v1, "gravity"

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 11133
    const-string v1, "hintScreenTimeout"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 11134
    const-string v1, "dismissalId"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 11135
    const-string v1, "bridgeTag"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 11137
    .end local v0    # "pages":[Landroid/app/Notification;
    .end local v6    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    :cond_2
    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 11775
    if-eqz p2, :cond_0

    .line 11776
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    goto :goto_0

    .line 11778
    :cond_0
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 11780
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 11230
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11231
    return-object p0
.end method

.method public whitelist addActions(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    .line 11247
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11248
    return-object p0
.end method

.method public whitelist addPage(Landroid/app/Notification;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "page"    # Landroid/app/Notification;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11329
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11330
    return-object p0
.end method

.method public whitelist addPages(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11346
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11347
    return-object p0
.end method

.method public whitelist clearActions()Landroid/app/Notification$WearableExtender;
    .locals 1

    .line 11257
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11258
    return-object p0
.end method

.method public whitelist clearPages()Landroid/app/Notification$WearableExtender;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11358
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11359
    return-object p0
.end method

.method public whitelist clone()Landroid/app/Notification$WearableExtender;
    .locals 3

    .line 11199
    new-instance v0, Landroid/app/Notification$WearableExtender;

    invoke-direct {v0}, Landroid/app/Notification$WearableExtender;-><init>()V

    .line 11200
    .local v0, "that":Landroid/app/Notification$WearableExtender;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 11201
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 11202
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 11203
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 11204
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 11205
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 11206
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 11207
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 11208
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 11209
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 11210
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 11211
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 11212
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 11213
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 11214
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10957
    invoke-virtual {p0}, Landroid/app/Notification$WearableExtender;->clone()Landroid/app/Notification$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 11146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11148
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11149
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11151
    :cond_0
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 11152
    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11154
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 11155
    const-string v2, "displayIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11157
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11158
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 11159
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Notification;

    .line 11158
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string/jumbo v2, "pages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 11161
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 11162
    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11164
    :cond_4
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    if-eqz v1, :cond_5

    .line 11165
    const-string v2, "contentIcon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11167
    :cond_5
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    const v2, 0x800005

    if-eq v1, v2, :cond_6

    .line 11168
    const-string v2, "contentIconGravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11170
    :cond_6
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 11171
    const-string v2, "contentActionIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11174
    :cond_7
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    if-eqz v1, :cond_8

    .line 11175
    const-string v2, "customSizePreset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11177
    :cond_8
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    if-eqz v1, :cond_9

    .line 11178
    const-string v2, "customContentHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11180
    :cond_9
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_a

    .line 11181
    const-string v2, "gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11183
    :cond_a
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    if-eqz v1, :cond_b

    .line 11184
    const-string v2, "hintScreenTimeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11186
    :cond_b
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 11187
    const-string v2, "dismissalId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11189
    :cond_c
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 11190
    const-string v2, "bridgeTag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11193
    :cond_d
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11194
    return-object p1
.end method

.method public whitelist getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 11265
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getBackground()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11402
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getBridgeTag()Ljava/lang/String;
    .locals 1

    .line 11771
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentAction()I
    .locals 1

    .line 11470
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    return v0
.end method

.method public whitelist getContentIcon()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11419
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    return v0
.end method

.method public whitelist getContentIconGravity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11442
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    return v0
.end method

.method public whitelist getContentIntentAvailableOffline()Z
    .locals 2

    .line 11586
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist getCustomContentHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11545
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    return v0
.end method

.method public whitelist getCustomSizePreset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11521
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    return v0
.end method

.method public whitelist getDismissalId()Ljava/lang/String;
    .locals 1

    .line 11750
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11313
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getGravity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11493
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    return v0
.end method

.method public whitelist getHintAmbientBigPicture()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11705
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getHintAvoidBackgroundClipping()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11654
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getHintContentIntentLaunchesActivity()Z
    .locals 1

    .line 11728
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getHintHideIcon()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11607
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getHintScreenTimeout()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11678
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    return v0
.end method

.method public whitelist getHintShowBackgroundOnly()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11628
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11372
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getStartScrollBottom()Z
    .locals 1

    .line 11564
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist setBackground(Landroid/graphics/Bitmap;)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11387
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 11388
    return-object p0
.end method

.method public whitelist setBridgeTag(Ljava/lang/String;)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "bridgeTag"    # Ljava/lang/String;

    .line 11762
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 11763
    return-object p0
.end method

.method public whitelist setContentAction(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "actionIndex"    # I

    .line 11456
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 11457
    return-object p0
.end method

.method public whitelist setContentIcon(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "icon"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11410
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 11411
    return-object p0
.end method

.method public whitelist setContentIconGravity(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "contentIconGravity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11430
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 11431
    return-object p0
.end method

.method public whitelist setContentIntentAvailableOffline(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "contentIntentAvailableOffline"    # Z

    .line 11575
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11576
    return-object p0
.end method

.method public whitelist setCustomContentHeight(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11533
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 11534
    return-object p0
.end method

.method public whitelist setCustomSizePreset(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "sizePreset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11507
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 11508
    return-object p0
.end method

.method public whitelist setDismissalId(Ljava/lang/String;)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "dismissalId"    # Ljava/lang/String;

    .line 11741
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 11742
    return-object p0
.end method

.method public whitelist setDisplayIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11301
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 11302
    return-object p0
.end method

.method public whitelist setGravity(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "gravity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11481
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 11482
    return-object p0
.end method

.method public whitelist setHintAmbientBigPicture(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintAmbientBigPicture"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11691
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11692
    return-object p0
.end method

.method public whitelist setHintAvoidBackgroundClipping(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintAvoidBackgroundClipping"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11641
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11642
    return-object p0
.end method

.method public whitelist setHintContentIntentLaunchesActivity(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintContentIntentLaunchesActivity"    # Z

    .line 11717
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11718
    return-object p0
.end method

.method public whitelist setHintHideIcon(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintHideIcon"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11596
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11597
    return-object p0
.end method

.method public whitelist setHintScreenTimeout(I)Landroid/app/Notification$WearableExtender;
    .locals 0
    .param p1, "timeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11666
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 11667
    return-object p0
.end method

.method public whitelist setHintShowBackgroundOnly(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "hintShowBackgroundOnly"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11617
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11618
    return-object p0
.end method

.method public whitelist setStartScrollBottom(Z)Landroid/app/Notification$WearableExtender;
    .locals 1
    .param p1, "startScrollBottom"    # Z

    .line 11554
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 11555
    return-object p0
.end method
