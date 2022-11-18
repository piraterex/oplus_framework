.class Landroid/view/HandwritingInitiator$State;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private blacklist mExceedTouchSlop:Z

.field private blacklist mShouldInitHandwriting:Z

.field private blacklist mStylusDownTimeInMillis:J

.field private blacklist mStylusDownX:F

.field private blacklist mStylusDownY:F

.field private blacklist mStylusPointerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mExceedTouchSlop:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F
    .locals 0

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F
    .locals 0

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I
    .locals 0

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mExceedTouchSlop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStylusDownX(Landroid/view/HandwritingInitiator$State;F)V
    .locals 0

    iput p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStylusDownY(Landroid/view/HandwritingInitiator$State;F)V
    .locals 0

    iput p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStylusPointerId(Landroid/view/HandwritingInitiator$State;I)V
    .locals 0

    iput p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    .line 365
    iput-boolean v0, p0, Landroid/view/HandwritingInitiator$State;->mExceedTouchSlop:Z

    .line 368
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    .line 370
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    .line 372
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    .line 373
    iput v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/HandwritingInitiator$State-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/HandwritingInitiator$State;-><init>()V

    return-void
.end method
