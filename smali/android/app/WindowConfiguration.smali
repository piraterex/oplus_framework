.class public Landroid/app/WindowConfiguration;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WindowConfiguration$WindowConfig;,
        Landroid/app/WindowConfiguration$AlwaysOnTop;,
        Landroid/app/WindowConfiguration$ActivityType;,
        Landroid/app/WindowConfiguration$WindowingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/app/WindowConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final blacklist ACTIVITY_TYPE_DREAM:I = 0x5

.field public static final blacklist ACTIVITY_TYPE_HOME:I = 0x2

.field public static final blacklist ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final blacklist ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final blacklist ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field private static final blacklist ALWAYS_ON_TOP_OFF:I = 0x2

.field private static final blacklist ALWAYS_ON_TOP_ON:I = 0x1

.field private static final blacklist ALWAYS_ON_TOP_UNDEFINED:I = 0x0

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WindowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ROTATION_UNDEFINED:I = -0x1

.field public static final blacklist WINDOWING_MODE_COMPACTWINDOW:I = 0x78

.field public static final blacklist WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final blacklist WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final blacklist WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final blacklist WINDOWING_MODE_PINNED:I = 0x2

.field public static final blacklist WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:I = 0x3

.field public static final blacklist WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I = 0x4

.field public static final blacklist WINDOWING_MODE_UNDEFINED:I = 0x0

.field public static final blacklist WINDOWING_MODE_ZOOM:I = 0x64

.field public static final greylist-max-o WINDOW_CONFIG_ACTIVITY_TYPE:I = 0x10

.field public static final blacklist WINDOW_CONFIG_ALWAYS_ON_TOP:I = 0x20

.field public static final greylist-max-o WINDOW_CONFIG_APP_BOUNDS:I = 0x2

.field public static final greylist-max-o WINDOW_CONFIG_BOUNDS:I = 0x1

.field public static final blacklist WINDOW_CONFIG_DISPLAY_ROTATION:I = 0x100

.field public static final blacklist WINDOW_CONFIG_DISPLAY_WINDOWING_MODE:I = 0x80

.field public static final blacklist WINDOW_CONFIG_MAX_BOUNDS:I = 0x4

.field public static final blacklist WINDOW_CONFIG_ROTATION:I = 0x40

.field public static final greylist-max-o WINDOW_CONFIG_WINDOWING_MODE:I = 0x8

.field public static blacklist sExtImpl:Landroid/app/IWindowConfigurationExt;


# instance fields
.field private greylist-max-o mActivityType:I

.field private blacklist mAlwaysOnTop:I

.field private greylist-max-o mAppBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private blacklist mDisplayRotation:I

.field private blacklist mDisplayWindowingMode:I

.field private final blacklist mMaxBounds:Landroid/graphics/Rect;

.field private blacklist mRotation:I

.field private greylist-max-o mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Landroid/app/WindowConfiguration$1;

    invoke-direct {v0}, Landroid/app/WindowConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 978
    const-class v0, Landroid/app/IWindowConfigurationExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IWindowConfigurationExt;

    sput-object v0, Landroid/app/WindowConfiguration;->sExtImpl:Landroid/app/IWindowConfigurationExt;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 92
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 237
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->unset()V

    .line 238
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/WindowConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/app/WindowConfiguration;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 92
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 242
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 243
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 92
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 246
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 247
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/WindowConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o activityTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "applicationType"    # I

    .line 956
    packed-switch p0, :pswitch_data_0

    .line 964
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 962
    :pswitch_0
    const-string v0, "dream"

    return-object v0

    .line 961
    :pswitch_1
    const-string v0, "assistant"

    return-object v0

    .line 960
    :pswitch_2
    const-string/jumbo v0, "recents"

    return-object v0

    .line 959
    :pswitch_3
    const-string v0, "home"

    return-object v0

    .line 958
    :pswitch_4
    const-string/jumbo v0, "standard"

    return-object v0

    .line 957
    :pswitch_5
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist alwaysOnTopToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "alwaysOnTop"    # I

    .line 969
    packed-switch p0, :pswitch_data_0

    .line 974
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 972
    :pswitch_0
    const-string/jumbo v0, "off"

    return-object v0

    .line 971
    :pswitch_1
    const-string/jumbo v0, "on"

    return-object v0

    .line 970
    :pswitch_2
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist inMultiWindowMode(I)Z
    .locals 2
    .param p0, "windowingMode"    # I

    .line 851
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object v1, Landroid/app/WindowConfiguration;->sExtImpl:Landroid/app/IWindowConfigurationExt;

    .line 854
    invoke-interface {v1, p0}, Landroid/app/IWindowConfigurationExt;->isWindowingZoomMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/app/WindowConfiguration;->sExtImpl:Landroid/app/IWindowConfigurationExt;

    .line 858
    invoke-interface {v1, p0}, Landroid/app/IWindowConfigurationExt;->isWindowingComactMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/app/WindowConfiguration;->sExtImpl:Landroid/app/IWindowConfigurationExt;

    .line 861
    invoke-interface {v1, p0}, Landroid/app/IWindowConfigurationExt;->isWindowingBracketMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 851
    :goto_0
    return v0
.end method

.method public static greylist-max-o isFloating(I)Z
    .locals 1
    .param p0, "windowingMode"    # I

    .line 842
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist setAlwaysOnTop(I)V
    .locals 0
    .param p1, "alwaysOnTop"    # I

    .line 367
    iput p1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 368
    return-void
.end method

.method public static greylist-max-o supportSplitScreenWindowingMode(I)Z
    .locals 1
    .param p0, "activityType"    # I

    .line 929
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o windowingModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "windowingMode"    # I

    .line 934
    packed-switch p0, :pswitch_data_0

    .line 946
    sget-object v0, Landroid/app/WindowConfiguration;->sExtImpl:Landroid/app/IWindowConfigurationExt;

    invoke-interface {v0, p0}, Landroid/app/IWindowConfigurationExt;->isWindowingComactMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    const-string/jumbo v0, "oplus-magic-windows"

    return-object v0

    .line 937
    :pswitch_0
    const-string/jumbo v0, "multi-window"

    return-object v0

    .line 941
    :pswitch_1
    const-string v0, "freeform"

    return-object v0

    .line 940
    :pswitch_2
    const-string/jumbo v0, "split-screen-secondary"

    return-object v0

    .line 939
    :pswitch_3
    const-string/jumbo v0, "split-screen-primary"

    return-object v0

    .line 938
    :pswitch_4
    const-string/jumbo v0, "pinned"

    return-object v0

    .line 936
    :pswitch_5
    const-string v0, "fullscreen"

    return-object v0

    .line 935
    :pswitch_6
    const-string/jumbo v0, "undefined"

    return-object v0

    .line 950
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o canReceiveKeys()Z
    .locals 2

    .line 871
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o canResizeTask()Z
    .locals 2

    .line 820
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist compareTo(Landroid/app/WindowConfiguration;)I
    .locals 3
    .param p1, "that"    # Landroid/app/WindowConfiguration;

    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, "n":I
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 643
    const/4 v1, 0x1

    return v1

    .line 644
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 645
    const/4 v1, -0x1

    return v1

    .line 646
    :cond_1
    if-eqz v1, :cond_5

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    .line 647
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 648
    .end local v0    # "n":I
    .local v1, "n":I
    if-eqz v1, :cond_2

    return v1

    .line 649
    :cond_2
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 650
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_3

    return v0

    .line 651
    :cond_3
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 652
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_4

    return v1

    .line 653
    :cond_4
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 654
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_5

    return v0

    .line 657
    :cond_5
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 658
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_6

    return v1

    .line 659
    :cond_6
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 660
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_7

    return v0

    .line 661
    :cond_7
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 662
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_8

    return v1

    .line 663
    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 664
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_9

    return v0

    .line 666
    :cond_9
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 667
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_a

    return v1

    .line 668
    :cond_a
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 669
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_b

    return v0

    .line 670
    :cond_b
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 671
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_c

    return v1

    .line 672
    :cond_c
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 673
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_d

    return v0

    .line 675
    :cond_d
    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    sub-int/2addr v1, v2

    .line 676
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_e

    return v1

    .line 677
    :cond_e
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    sub-int/2addr v0, v2

    .line 678
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_f

    return v0

    .line 679
    :cond_f
    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    sub-int/2addr v1, v2

    .line 680
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_10

    return v1

    .line 681
    :cond_10
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mRotation:I

    sub-int/2addr v0, v2

    .line 682
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_11

    return v0

    .line 684
    :cond_11
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    sub-int/2addr v1, v2

    .line 685
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_12

    return v1

    .line 686
    :cond_12
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    sub-int/2addr v0, v2

    .line 687
    .end local v1    # "n":I
    .restart local v0    # "n":I
    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o diff(Landroid/app/WindowConfiguration;Z)J
    .locals 5
    .param p1, "other"    # Landroid/app/WindowConfiguration;
    .param p2, "compareUndefined"    # Z

    .line 589
    const-wide/16 v0, 0x0

    .line 591
    .local v0, "changes":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 596
    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    .line 598
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 599
    :cond_2
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 602
    :cond_3
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 603
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 606
    :cond_4
    if-nez p2, :cond_5

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v2, :cond_6

    :cond_5
    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v3, :cond_6

    .line 608
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 611
    :cond_6
    if-nez p2, :cond_7

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v3, :cond_8

    .line 613
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 616
    :cond_8
    if-nez p2, :cond_9

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v2, :cond_a

    :cond_9
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v3, :cond_a

    .line 618
    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    .line 621
    :cond_a
    const/4 v2, -0x1

    if-nez p2, :cond_b

    iget v3, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v2, :cond_c

    :cond_b
    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v4, :cond_c

    .line 623
    const-wide/16 v3, 0x40

    or-long/2addr v0, v3

    .line 626
    :cond_c
    if-nez p2, :cond_d

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eqz v3, :cond_e

    :cond_d
    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eq v3, v4, :cond_e

    .line 628
    const-wide/16 v3, 0x80

    or-long/2addr v0, v3

    .line 631
    :cond_e
    if-nez p2, :cond_f

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v3, v2, :cond_10

    :cond_f
    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v2, v3, :cond_10

    .line 633
    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    .line 636
    :cond_10
    return-wide v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 746
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 747
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    .line 748
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 750
    :cond_0
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 751
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 752
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 753
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 754
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 755
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "that"    # Ljava/lang/Object;

    .line 696
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 697
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 698
    :cond_1
    instance-of v2, p1, Landroid/app/WindowConfiguration;

    if-nez v2, :cond_2

    .line 699
    return v0

    .line 701
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, v2}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public blacklist getActivityType()I
    .locals 1

    .line 454
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return v0
.end method

.method public blacklist getAppBounds()Landroid/graphics/Rect;
    .locals 1

    .line 385
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayRotation()I
    .locals 1

    .line 404
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return v0
.end method

.method public blacklist getDisplayWindowingMode()I
    .locals 1

    .line 432
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    return v0
.end method

.method public blacklist getMaxBounds()Landroid/graphics/Rect;
    .locals 1

    .line 396
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getRotation()I
    .locals 1

    .line 408
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    .line 421
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return v0
.end method

.method public greylist-max-o hasMovementAnimations()Z
    .locals 2

    .line 914
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasWindowDecorCaption()Z
    .locals 3

    .line 810
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-ne v0, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o hasWindowShadow()Z
    .locals 2

    .line 801
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 709
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 710
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 711
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    add-int/2addr v0, v2

    .line 712
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    add-int/2addr v1, v2

    .line 713
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    add-int/2addr v0, v2

    .line 714
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mRotation:I

    add-int/2addr v1, v2

    .line 715
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    add-int/2addr v0, v2

    .line 716
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    add-int/2addr v1, v2

    .line 717
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public greylist-max-o isAlwaysOnTop()Z
    .locals 5

    .line 880
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    .line 881
    :cond_0
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    return v1

    .line 882
    :cond_1
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    const/4 v4, 0x0

    if-eq v2, v1, :cond_2

    return v4

    .line 883
    :cond_2
    if-eq v0, v3, :cond_4

    sget-object v2, Landroid/app/WindowConfiguration;->sExtImpl:Landroid/app/IWindowConfigurationExt;

    .line 886
    invoke-interface {v2, v0}, Landroid/app/IWindowConfigurationExt;->isWindowingZoomMode(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 883
    :goto_1
    return v1
.end method

.method public greylist-max-o keepVisibleDeadAppWindowOnScreen()Z
    .locals 2

    .line 897
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o persistTaskBounds()Z
    .locals 2

    .line 827
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 264
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 265
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 266
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 273
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 767
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 769
    .local v0, "token":J
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 770
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 779
    :pswitch_0
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 780
    goto :goto_1

    .line 776
    :pswitch_1
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 777
    goto :goto_1

    .line 785
    :pswitch_2
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    goto :goto_1

    .line 782
    :pswitch_3
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 783
    goto :goto_1

    .line 772
    :pswitch_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 773
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    nop

    .line 786
    :goto_1
    goto :goto_0

    .line 791
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 792
    nop

    .line 793
    return-void

    .line 791
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 792
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setActivityType(I)V
    .locals 3
    .param p1, "activityType"    # I

    .line 436
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-ne v0, p1, :cond_0

    .line 437
    return-void

    .line 443
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 446
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_2
    :goto_0
    iput p1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 450
    return-void
.end method

.method public blacklist setAlwaysOnTop(Z)V
    .locals 1
    .param p1, "alwaysOnTop"    # Z

    .line 355
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 356
    return-void
.end method

.method public greylist-max-o setAppBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 376
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 381
    return-void
.end method

.method public blacklist setAppBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 312
    if-nez p1, :cond_0

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 314
    return-void

    .line 317
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 318
    return-void
.end method

.method public blacklist setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 298
    if-nez p1, :cond_0

    .line 299
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 300
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    return-void
.end method

.method public blacklist setDisplayRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 346
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 347
    return-void
.end method

.method public blacklist setDisplayWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 426
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 427
    return-void
.end method

.method public blacklist setMaxBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 338
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 339
    return-void
.end method

.method public blacklist setMaxBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 326
    if-nez p1, :cond_0

    .line 327
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 328
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 331
    return-void
.end method

.method public blacklist setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 412
    iput p1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 413
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;)V
    .locals 1
    .param p1, "other"    # Landroid/app/WindowConfiguration;

    .line 458
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 459
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 460
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 461
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 462
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 463
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 464
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 465
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 466
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 467
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;I)V
    .locals 1
    .param p1, "delta"    # Landroid/app/WindowConfiguration;
    .param p2, "mask"    # I

    .line 548
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 551
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 554
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 557
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 558
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 560
    :cond_3
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_4

    .line 561
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 563
    :cond_4
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_5

    .line 564
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 566
    :cond_5
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_6

    .line 567
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 569
    :cond_6
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_7

    .line 570
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 572
    :cond_7
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_8

    .line 573
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 575
    :cond_8
    return-void
.end method

.method public greylist-max-o setToDefaults()V
    .locals 2

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 478
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 479
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 480
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 481
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 482
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 483
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 484
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 485
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 486
    return-void
.end method

.method public blacklist setWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 416
    iput p1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 417
    return-void
.end method

.method public greylist-max-o supportSplitScreenWindowingMode()Z
    .locals 1

    .line 924
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o tasksAreFloating()Z
    .locals 1

    .line 837
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 726
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const-string/jumbo v2, "undefined"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 727
    move-object v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 728
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    .line 729
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 730
    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 731
    invoke-static {v1}, Landroid/app/WindowConfiguration;->alwaysOnTopToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 732
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-ne v1, v3, :cond_1

    .line 733
    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    return-object v0
.end method

.method public greylist-max-o unset()V
    .locals 0

    .line 472
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 473
    return-void
.end method

.method public blacklist unsetAlwaysOnTop()V
    .locals 1

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 364
    return-void
.end method

.method public greylist-max-o updateFrom(Landroid/app/WindowConfiguration;)I
    .locals 4
    .param p1, "delta"    # Landroid/app/WindowConfiguration;

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, "changed":I
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    or-int/lit8 v0, v0, 0x1

    .line 501
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 503
    :cond_0
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    or-int/lit8 v0, v0, 0x2

    .line 505
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 507
    :cond_1
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 508
    or-int/lit8 v0, v0, 0x4

    .line 509
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 511
    :cond_2
    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v1, :cond_3

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v1, :cond_3

    .line 513
    or-int/lit8 v0, v0, 0x8

    .line 514
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 516
    :cond_3
    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v1, :cond_4

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v1, :cond_4

    .line 518
    or-int/lit8 v0, v0, 0x10

    .line 519
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 521
    :cond_4
    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v1, :cond_5

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v1, :cond_5

    .line 523
    or-int/lit8 v0, v0, 0x20

    .line 524
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 526
    :cond_5
    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v1, v3, :cond_6

    .line 527
    or-int/lit8 v0, v0, 0x40

    .line 528
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 530
    :cond_6
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eqz v1, :cond_7

    iget v3, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    if-eq v3, v1, :cond_7

    .line 532
    or-int/lit16 v0, v0, 0x80

    .line 533
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 535
    :cond_7
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v2, :cond_8

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v2, :cond_8

    .line 537
    or-int/lit16 v0, v0, 0x100

    .line 538
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 540
    :cond_8
    return v0
.end method

.method public greylist-max-o useWindowFrameForBackdrop()Z
    .locals 2

    .line 906
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 251
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 253
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 254
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    return-void
.end method
