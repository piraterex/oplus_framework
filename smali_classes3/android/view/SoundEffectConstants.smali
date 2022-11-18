.class public Landroid/view/SoundEffectConstants;
.super Ljava/lang/Object;
.source "SoundEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SoundEffectConstants$NavigationSoundEffect;,
        Landroid/view/SoundEffectConstants$SoundEffect;
    }
.end annotation


# static fields
.field public static final whitelist CLICK:I = 0x0

.field public static final whitelist NAVIGATION_DOWN:I = 0x4

.field public static final whitelist NAVIGATION_LEFT:I = 0x1

.field public static final whitelist NAVIGATION_REPEAT_DOWN:I = 0x8

.field public static final whitelist NAVIGATION_REPEAT_LEFT:I = 0x5

.field private static final blacklist NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

.field public static final whitelist NAVIGATION_REPEAT_RIGHT:I = 0x7

.field public static final whitelist NAVIGATION_REPEAT_UP:I = 0x6

.field public static final whitelist NAVIGATION_RIGHT:I = 0x3

.field public static final whitelist NAVIGATION_UP:I = 0x2

.field private static blacklist sLastNavigationRepeatSoundEffectId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/view/SoundEffectConstants;->NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

    .line 36
    const/4 v0, -0x1

    sput v0, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getConstantForFocusDirection(IZ)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "repeating"    # Z

    .line 120
    if-eqz p1, :cond_0

    .line 121
    sparse-switch p0, :sswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :sswitch_0
    const/4 v0, 0x7

    return v0

    .line 128
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 126
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 131
    :sswitch_3
    const/4 v0, 0x6

    return v0

    .line 136
    :cond_0
    invoke-static {p0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public static whitelist getContantForFocusDirection(I)I
    .locals 2
    .param p0, "direction"    # I

    .line 94
    sparse-switch p0, :sswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 101
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 99
    :sswitch_2
    const/4 v0, 0x4

    return v0

    .line 104
    :sswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public static blacklist isNavigationRepeat(I)Z
    .locals 1
    .param p0, "effectId"    # I

    .line 147
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

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

.method public static blacklist nextNavigationRepeatSoundEffectId()I
    .locals 2

    .line 160
    sget-object v0, Landroid/view/SoundEffectConstants;->NAVIGATION_REPEAT_RANDOMIZER:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 162
    .local v0, "next":I
    sget v1, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    if-lt v0, v1, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_0
    sput v0, Landroid/view/SoundEffectConstants;->sLastNavigationRepeatSoundEffectId:I

    .line 166
    invoke-static {v0}, Landroid/media/AudioManager;->getNthNavigationRepeatSoundEffect(I)I

    move-result v1

    return v1
.end method
