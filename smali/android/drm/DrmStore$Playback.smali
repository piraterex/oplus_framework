.class public Landroid/drm/DrmStore$Playback;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playback"
.end annotation


# static fields
.field public static final whitelist PAUSE:I = 0x2

.field public static final whitelist RESUME:I = 0x3

.field public static final whitelist START:I = 0x0

.field public static final whitelist STOP:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o isValid(I)Z
    .locals 1
    .param p0, "playbackStatus"    # I

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "isValid":Z
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
