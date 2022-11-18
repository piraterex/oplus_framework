.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final greylist-max-o ANY_WINDOW_ID:I = -0x2

.field private static final greylist-max-o BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final greylist-max-o BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final greylist-max-o BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field private static final greylist-max-o BOOLEAN_PROPERTY_PICTURE_IN_PICTURE:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0xa

.field public static final greylist-max-o PICTURE_IN_PICTURE_ACTION_REPLACER_WINDOW_ID:I = -0x3

.field public static final whitelist TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final whitelist TYPE_APPLICATION:I = 0x1

.field public static final whitelist TYPE_INPUT_METHOD:I = 0x2

.field public static final whitelist TYPE_MAGNIFICATION_OVERLAY:I = 0x6

.field public static final whitelist TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final whitelist TYPE_SYSTEM:I = 0x3

.field public static final blacklist UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final greylist-max-o UNDEFINED_WINDOW_ID:I = -0x1

.field private static greylist-max-o sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnchorId:J

.field private greylist-max-o mBooleanProperties:I

.field private greylist-max-o mChildIds:Landroid/util/LongArray;

.field private greylist-max-o mConnectionId:I

.field private blacklist mDisplayId:I

.field private greylist-max-o mId:I

.field private greylist-max-o mLayer:I

.field private greylist-max-o mParentId:I

.field private blacklist mRegionInScreen:Landroid/graphics/Region;

.field private blacklist mTaskId:I

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 112
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 894
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 119
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 120
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 122
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 123
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 124
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 125
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 128
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 130
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 136
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 119
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 120
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 122
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 123
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 124
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 125
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 128
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 130
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 145
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 146
    return-void
.end method

.method private greylist-max-o clear()V
    .locals 4

    .line 772
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 773
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 774
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 775
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 776
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 777
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 778
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 779
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 780
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 781
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 782
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 783
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 784
    return-void
.end method

.method private greylist-max-o getBooleanProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 793
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist init(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 658
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 659
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 660
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 661
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 662
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 663
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 664
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 665
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 666
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 667
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 669
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 670
    :cond_0
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 671
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    goto :goto_0

    .line 674
    :cond_1
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    .line 678
    :cond_2
    :goto_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 679
    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 689
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 694
    .local v0, "childCount":I
    if-lez v0, :cond_1

    .line 695
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_0

    .line 696
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1, v0}, Landroid/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 698
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 700
    .local v2, "childId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 698
    .end local v2    # "childId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 705
    return-void
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    .line 539
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 540
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v0, :cond_0

    .line 541
    new-instance v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    move-object v0, v1

    .line 543
    :cond_0
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 546
    :cond_1
    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 561
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 562
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 563
    return-object v0
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .line 805
    if-eqz p2, :cond_0

    .line 806
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    goto :goto_0

    .line 808
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 810
    :goto_0
    return-void
.end method

.method public static blacklist setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .param p0, "counter"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 573
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 574
    sput-object p0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 576
    :cond_0
    return-void
.end method

.method public static greylist-max-o typeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 816
    packed-switch p0, :pswitch_data_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN:"

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

    .line 833
    :pswitch_0
    const-string v0, "TYPE_MAGNIFICATION_OVERLAY"

    return-object v0

    .line 830
    :pswitch_1
    const-string v0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object v0

    .line 827
    :pswitch_2
    const-string v0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object v0

    .line 824
    :pswitch_3
    const-string v0, "TYPE_SYSTEM"

    return-object v0

    .line 821
    :pswitch_4
    const-string v0, "TYPE_INPUT_METHOD"

    return-object v0

    .line 818
    :pswitch_5
    const-string v0, "TYPE_APPLICATION"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o addChild(I)V
    .locals 3
    .param p1, "childId"    # I

    .line 502
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 506
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I
    .locals 3
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 852
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v1, :cond_a

    .line 855
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    if-ne v0, v1, :cond_9

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "changes":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 860
    or-int/lit8 v0, v0, 0x4

    .line 862
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 863
    or-int/lit8 v0, v0, 0x8

    .line 865
    :cond_1
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    if-eq v1, v2, :cond_2

    .line 866
    or-int/lit8 v0, v0, 0x10

    .line 868
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 869
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_3

    .line 870
    or-int/lit8 v0, v0, 0x20

    .line 872
    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 873
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_4

    .line 874
    or-int/lit8 v0, v0, 0x40

    .line 876
    :cond_4
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 877
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_5

    .line 878
    or-int/lit16 v0, v0, 0x80

    .line 880
    :cond_5
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 881
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_6

    .line 882
    or-int/lit16 v0, v0, 0x400

    .line 884
    :cond_6
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v1, v2, :cond_7

    .line 885
    or-int/lit16 v0, v0, 0x100

    .line 887
    :cond_7
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 888
    or-int/lit16 v0, v0, 0x200

    .line 891
    :cond_8
    return v0

    .line 856
    .end local v0    # "changes":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not same window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 714
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 715
    return v0

    .line 717
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 718
    return v1

    .line 720
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 721
    return v1

    .line 723
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 724
    .local v2, "other":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v4, v2, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public whitelist getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    .line 262
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 269
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 265
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 392
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 393
    return-void
.end method

.method public whitelist getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3
    .param p1, "index"    # I

    .line 483
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_1

    .line 486
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 487
    const/4 v0, 0x0

    return-object v0

    .line 489
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 490
    .local v0, "childId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 491
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    return-object v2

    .line 484
    .end local v0    # "childId":I
    .end local v1    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getChildCount()I
    .locals 1

    .line 473
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    .line 526
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 317
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public whitelist getLayer()I
    .locals 1

    .line 201
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return v0
.end method

.method public whitelist getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    .line 293
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 297
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1

    .line 294
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRegionInScreen(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 371
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 372
    return-void
.end method

.method public whitelist getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 222
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRoot(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "prefetchingStrategy"    # I

    .line 236
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 240
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v7, p1

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getTaskId()I
    .locals 1

    .line 339
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    return v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 180
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 709
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public whitelist isAccessibilityFocused()Z
    .locals 1

    .line 453
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isActive()Z
    .locals 1

    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFocused()Z
    .locals 1

    .line 433
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isInPictureInPictureMode()Z
    .locals 1

    .line 284
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist recycle()V
    .locals 1

    .line 589
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    .line 590
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_0
    return-void
.end method

.method public blacklist refresh()Z
    .locals 5

    .line 606
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 610
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 612
    .local v2, "refreshedInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v2, :cond_1

    .line 613
    return v1

    .line 615
    :cond_1
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 616
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 617
    return v4

    .line 607
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local v2    # "refreshedInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2
    :goto_0
    return v1
.end method

.method public greylist-max-o setAccessibilityFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .line 464
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 465
    return-void
.end method

.method public greylist-max-o setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 424
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 425
    return-void
.end method

.method public greylist-max-o setAnchorId(J)V
    .locals 0
    .param p1, "anchorId"    # J

    .line 253
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 254
    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    .line 362
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 363
    return-void
.end method

.method public blacklist setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 516
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 517
    return-void
.end method

.method public greylist-max-o setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .line 444
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 445
    return-void
.end method

.method public greylist-max-o setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 328
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 329
    return-void
.end method

.method public greylist-max-o setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .line 213
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 214
    return-void
.end method

.method public greylist-max-o setParentId(I)V
    .locals 0
    .param p1, "parentId"    # I

    .line 308
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 309
    return-void
.end method

.method public greylist-max-o setPictureInPicture(Z)V
    .locals 1
    .param p1, "pictureInPicture"    # Z

    .line 275
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 276
    return-void
.end method

.method public blacklist setRegionInScreen(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .line 382
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 383
    return-void
.end method

.method public blacklist setTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 350
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 351
    return-void
.end method

.method public greylist-max-o setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 166
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 167
    return-void
.end method

.method public greylist-max-o setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 191
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 192
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 9

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "AccessibilityWindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 732
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 734
    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 738
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 740
    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 741
    const-string v1, ", pictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 758
    const-string v1, ", hasParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 759
    const-string v1, ", isAnchored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v7, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 760
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 761
    const-string v1, ", hasChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v2, :cond_2

    .line 762
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 761
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 764
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 627
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 635
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 636
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 638
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 639
    .local v0, "childIds":Landroid/util/LongArray;
    if-nez v0, :cond_0

    .line 640
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 642
    :cond_0
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v1

    .line 643
    .local v1, "childCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 645
    invoke-virtual {v0, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 649
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    return-void
.end method
