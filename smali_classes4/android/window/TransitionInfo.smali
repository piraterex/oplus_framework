.class public final Landroid/window/TransitionInfo;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$AnimationOptions;,
        Landroid/window/TransitionInfo$Change;,
        Landroid/window/TransitionInfo$ChangeFlags;,
        Landroid/window/TransitionInfo$TransitionMode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_DISPLAY_HAS_ALERT_WINDOWS:I = 0x80

.field public static final blacklist FLAG_FIRST_CUSTOM:I = 0x100

.field public static final blacklist FLAG_IS_DISPLAY:I = 0x20

.field public static final blacklist FLAG_IS_VOICE_INTERACTION:I = 0x10

.field public static final blacklist FLAG_IS_WALLPAPER:I = 0x2

.field public static final blacklist FLAG_NONE:I = 0x0

.field public static final blacklist FLAG_OCCLUDES_KEYGUARD:I = 0x40

.field public static final blacklist FLAG_SHOW_WALLPAPER:I = 0x1

.field public static final blacklist FLAG_STARTING_WINDOW_TRANSFER_RECIPIENT:I = 0x8

.field public static final blacklist FLAG_TRANSLUCENT:I = 0x4


# instance fields
.field private final blacklist mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlags:I

.field private blacklist mOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field private blacklist mRootLeash:Landroid/view/SurfaceControl;

.field private final blacklist mRootOffset:Landroid/graphics/Point;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Landroid/window/TransitionInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "flags"    # I

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRootOffset:Landroid/graphics/Point;

    .line 139
    iput p1, p0, Landroid/window/TransitionInfo;->mType:I

    .line 140
    iput p2, p0, Landroid/window/TransitionInfo;->mFlags:I

    .line 141
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    .line 133
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo;->mRootOffset:Landroid/graphics/Point;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/window/TransitionInfo;->mType:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    .line 146
    sget-object v2, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 147
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRootLeash:Landroid/view/SurfaceControl;

    .line 148
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 149
    invoke-virtual {v1, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 150
    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "flags"    # I

    .line 295
    if-nez p0, :cond_0

    const-string v0, "NONE"

    return-object v0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 298
    const-string v1, "SHOW_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    .line 301
    const-string v1, "IS_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const-string v2, ""

    const-string/jumbo v3, "|"

    if-eqz v1, :cond_4

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TRANSLUCENT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_4
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_6

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_5

    move-object v4, v2

    goto :goto_1

    :cond_5
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "STARTING_WINDOW_TRANSFER"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_6
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_7

    move-object v4, v2

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_VOICE_INTERACTION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_8
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_a

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_9

    move-object v4, v2

    goto :goto_3

    :cond_9
    move-object v4, v3

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_DISPLAY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_a
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_c

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_b

    move-object v4, v2

    goto :goto_4

    :cond_b
    move-object v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "OCCLUDES_KEYGUARD"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_c
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_e

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_d

    move-object v4, v2

    goto :goto_5

    :cond_d
    move-object v4, v3

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "DISPLAY_HAS_ALERT_WINDOWS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_e
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_10

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_f

    goto :goto_6

    :cond_f
    move-object v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FIRST_CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z
    .locals 5
    .param p0, "change"    # Landroid/window/TransitionInfo$Change;
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 334
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    .line 340
    :cond_1
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    .line 341
    .local v0, "parentChg":Landroid/window/TransitionInfo$Change;
    :goto_0
    if-eqz v0, :cond_4

    .line 344
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v2, :cond_2

    return v3

    .line 348
    :cond_2
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-nez v4, :cond_3

    return v1

    .line 350
    :cond_3
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_4
    return v3
.end method

.method public static blacklist modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 281
    packed-switch p0, :pswitch_data_0

    .line 288
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_1
    const-string v0, "CHANGE"

    return-object v0

    .line 286
    :pswitch_2
    const-string v0, "HIDE"

    return-object v0

    .line 285
    :pswitch_3
    const-string v0, "SHOW"

    return-object v0

    .line 284
    :pswitch_4
    const-string v0, "CLOSE"

    return-object v0

    .line 283
    :pswitch_5
    const-string v0, "OPEN"

    return-object v0

    .line 282
    :pswitch_6
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist addChange(Landroid/window/TransitionInfo$Change;)V
    .locals 1
    .param p1, "change"    # Landroid/window/TransitionInfo$Change;

    .line 253
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-object v0
.end method

.method public blacklist getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;
    .locals 2
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 241
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 242
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    return-object v1

    .line 241
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 246
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 199
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    return v0
.end method

.method public blacklist getRootLeash()Landroid/view/SurfaceControl;
    .locals 2

    .line 210
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRootLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 213
    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to get a leash which wasn\'t set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRootOffset()Landroid/graphics/Point;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRootOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 195
    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    return v0
.end method

.method public blacklist isKeyguardGoingAway()Z
    .locals 1

    .line 260
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V
    .locals 0
    .param p1, "options"    # Landroid/window/TransitionInfo$AnimationOptions;

    .line 191
    iput-object p1, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 192
    return-void
.end method

.method public blacklist setRootLeash(Landroid/view/SurfaceControl;II)V
    .locals 1
    .param p1, "leash"    # Landroid/view/SurfaceControl;
    .param p2, "offsetLeft"    # I
    .param p3, "offsetTop"    # I

    .line 186
    iput-object p1, p0, Landroid/window/TransitionInfo;->mRootLeash:Landroid/view/SurfaceControl;

    .line 187
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRootOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 188
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " f=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ro="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionInfo;->mRootOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " c=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 269
    if-lez v1, :cond_0

    .line 270
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    iget-object v2, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRootOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    iget-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    return-void
.end method
