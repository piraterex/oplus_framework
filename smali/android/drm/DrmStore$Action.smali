.class public Landroid/drm/DrmStore$Action;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist DISPLAY:I = 0x7

.field public static final whitelist EXECUTE:I = 0x6

.field public static final whitelist OUTPUT:I = 0x4

.field public static final whitelist PLAY:I = 0x1

.field public static final whitelist PREVIEW:I = 0x5

.field public static final whitelist RINGTONE:I = 0x2

.field public static final whitelist TRANSFER:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o isValid(I)Z
    .locals 1
    .param p0, "action"    # I

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "isValid":Z
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
