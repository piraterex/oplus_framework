.class public final Landroid/view/accessibility/AccessibilityEvent;
.super Landroid/view/accessibility/AccessibilityRecord;
.source "AccessibilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityEvent$EventType;,
        Landroid/view/accessibility/AccessibilityEvent$SpeechStateChangeTypes;,
        Landroid/view/accessibility/AccessibilityEvent$ContentChangeTypes;,
        Landroid/view/accessibility/AccessibilityEvent$WindowsChangeTypes;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_CANCELLED:I = 0x200

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_DROPPED:I = 0x100

.field public static final whitelist CONTENT_CHANGE_TYPE_DRAG_STARTED:I = 0x80

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_APPEARED:I = 0x10

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_DISAPPEARED:I = 0x20

.field public static final whitelist CONTENT_CHANGE_TYPE_PANE_TITLE:I = 0x8

.field public static final whitelist CONTENT_CHANGE_TYPE_STATE_DESCRIPTION:I = 0x40

.field public static final whitelist CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final whitelist CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final whitelist CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z

.field public static final greylist-max-o DEBUG_ORIGIN:Z = false

.field public static final whitelist INVALID_POSITION:I = -0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AccessibilityEvent"

.field public static final whitelist MAX_TEXT_LENGTH:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SPEECH_STATE_LISTENING_END:I = 0x8

.field public static final whitelist SPEECH_STATE_LISTENING_START:I = 0x4

.field public static final whitelist SPEECH_STATE_SPEAKING_END:I = 0x2

.field public static final whitelist SPEECH_STATE_SPEAKING_START:I = 0x1

.field public static final whitelist TYPES_ALL_MASK:I = -0x1

.field public static final whitelist TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final whitelist TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final whitelist TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final whitelist TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final whitelist TYPE_NOTIFICATION_STATE_CHANGED:I = 0x40

.field public static final whitelist TYPE_SPEECH_STATE_CHANGE:I = 0x2000000

.field public static final whitelist TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final whitelist TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final whitelist TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final whitelist TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final whitelist TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final whitelist TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final whitelist TYPE_VIEW_CLICKED:I = 0x1

.field public static final whitelist TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final whitelist TYPE_VIEW_FOCUSED:I = 0x8

.field public static final whitelist TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final whitelist TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final whitelist TYPE_VIEW_LONG_CLICKED:I = 0x2

.field public static final whitelist TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final whitelist TYPE_VIEW_SELECTED:I = 0x4

.field public static final whitelist TYPE_VIEW_TEXT_CHANGED:I = 0x10

.field public static final whitelist TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final whitelist TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final whitelist TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final whitelist TYPE_WINDOW_CONTENT_CHANGED:I = 0x800

.field public static final whitelist TYPE_WINDOW_STATE_CHANGED:I = 0x20

.field public static final whitelist WINDOWS_CHANGE_ACCESSIBILITY_FOCUSED:I = 0x80

.field public static final whitelist WINDOWS_CHANGE_ACTIVE:I = 0x20

.field public static final whitelist WINDOWS_CHANGE_ADDED:I = 0x1

.field public static final whitelist WINDOWS_CHANGE_BOUNDS:I = 0x8

.field public static final whitelist WINDOWS_CHANGE_CHILDREN:I = 0x200

.field public static final whitelist WINDOWS_CHANGE_FOCUSED:I = 0x40

.field public static final whitelist WINDOWS_CHANGE_LAYER:I = 0x10

.field public static final whitelist WINDOWS_CHANGE_PARENT:I = 0x100

.field public static final whitelist WINDOWS_CHANGE_PIP:I = 0x400

.field public static final whitelist WINDOWS_CHANGE_REMOVED:I = 0x2

.field public static final whitelist WINDOWS_CHANGE_TITLE:I = 0x4


# instance fields
.field greylist-max-p mAction:I

.field greylist-max-o mContentChangeTypes:I

.field private greylist-max-o mEventTime:J

.field private greylist mEventType:I

.field greylist-max-o mMovementGranularity:I

.field private greylist-max-o mPackageName:Ljava/lang/CharSequence;

.field private greylist-max-o mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityRecord;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSpeechStateChangeTypes:I

.field greylist-max-o mWindowChangeTypes:I

.field public greylist-max-o originStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public static synthetic blacklist $r8$lambda$23vuZVewyrIZ16aQ0GDTZbcAtxM(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleContentChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XpZd_QnB-Qimb1rPEnPWyCs2DVk(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleWindowChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vqNz0hiX9UA7NQDLkUxqDGqecbQ(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->singleSpeechStateChangeTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 415
    const-string v0, "AccessibilityEvent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/view/accessibility/AccessibilityEvent;->DEBUG:Z

    .line 1647
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 917
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 919
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "eventType"    # I

    .line 927
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 928
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 930
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 938
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->originStackTrace:[Ljava/lang/StackTraceElement;

    .line 939
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 940
    return-void
.end method

.method private static greylist-max-o contentChangeTypesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "types"    # I

    .line 1058
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist eventTypeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "eventType"    # I

    .line 1583
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 1584
    const-string v0, "TYPES_ALL_MASK"

    return-object v0

    .line 1586
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1587
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1588
    .local v1, "eventTypeCount":I
    :goto_0
    const/4 v2, 0x1

    if-eqz p0, :cond_2

    .line 1589
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 1590
    .local v2, "eventTypeFlag":I
    not-int v3, v2

    and-int/2addr p0, v3

    .line 1592
    if-lez v1, :cond_1

    .line 1593
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    :cond_1
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->singleEventTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    nop

    .end local v2    # "eventTypeFlag":I
    add-int/lit8 v1, v1, 0x1

    .line 1598
    goto :goto_0

    .line 1599
    :cond_2
    if-le v1, v2, :cond_3

    .line 1600
    const/4 v2, 0x0

    const/16 v3, 0x5b

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1601
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1603
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1349
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p0, "eventType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1318
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    .line 1319
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 1320
    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1335
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    .line 1336
    .local v0, "eventClone":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1337
    return-object v0
.end method

.method public static greylist-max-o obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p0, "windowId"    # I
    .param p1, "windowChangeTypes"    # I

    .line 1301
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 1302
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 1303
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setWindowChanges(I)V

    .line 1304
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 1305
    return-object v0
.end method

.method private greylist-max-o readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 1437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 1439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 1440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 1441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 1442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 1443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 1445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 1446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 1447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 1448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 1449
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 1450
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 1451
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 1452
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 1453
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    const-class v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 1454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 1455
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 1456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 1457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 1458
    return-void
.end method

.method private static greylist-max-o singleContentChangeTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 1062
    sparse-switch p0, :sswitch_data_0

    .line 1077
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1076
    :sswitch_0
    const-string v0, "CONTENT_CHANGE_TYPE_DRAG_CANCELLED"

    return-object v0

    .line 1075
    :sswitch_1
    const-string v0, "CONTENT_CHANGE_TYPE_DRAG_DROPPED"

    return-object v0

    .line 1074
    :sswitch_2
    const-string v0, "CONTENT_CHANGE_TYPE_DRAG_STARTED"

    return-object v0

    .line 1066
    :sswitch_3
    const-string v0, "CONTENT_CHANGE_TYPE_STATE_DESCRIPTION"

    return-object v0

    .line 1073
    :sswitch_4
    const-string v0, "CONTENT_CHANGE_TYPE_PANE_DISAPPEARED"

    return-object v0

    .line 1071
    :sswitch_5
    const-string v0, "CONTENT_CHANGE_TYPE_PANE_APPEARED"

    return-object v0

    .line 1069
    :sswitch_6
    const-string v0, "CONTENT_CHANGE_TYPE_PANE_TITLE"

    return-object v0

    .line 1064
    :sswitch_7
    const-string v0, "CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION"

    return-object v0

    .line 1068
    :sswitch_8
    const-string v0, "CONTENT_CHANGE_TYPE_TEXT"

    return-object v0

    .line 1067
    :sswitch_9
    const-string v0, "CONTENT_CHANGE_TYPE_SUBTREE"

    return-object v0

    .line 1070
    :sswitch_a
    const-string v0, "CONTENT_CHANGE_TYPE_UNDEFINED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
        0x10 -> :sswitch_5
        0x20 -> :sswitch_4
        0x40 -> :sswitch_3
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist-max-o singleEventTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # I

    .line 1607
    sparse-switch p0, :sswitch_data_0

    .line 1640
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1639
    :sswitch_0
    const-string v0, "TYPE_SPEECH_STATE_CHANGE"

    return-object v0

    .line 1638
    :sswitch_1
    const-string v0, "TYPE_ASSIST_READING_CONTEXT"

    return-object v0

    .line 1637
    :sswitch_2
    const-string v0, "TYPE_VIEW_CONTEXT_CLICKED"

    return-object v0

    .line 1636
    :sswitch_3
    const-string v0, "TYPE_WINDOWS_CHANGED"

    return-object v0

    .line 1635
    :sswitch_4
    const-string v0, "TYPE_TOUCH_INTERACTION_END"

    return-object v0

    .line 1634
    :sswitch_5
    const-string v0, "TYPE_TOUCH_INTERACTION_START"

    return-object v0

    .line 1633
    :sswitch_6
    const-string v0, "TYPE_GESTURE_DETECTION_END"

    return-object v0

    .line 1632
    :sswitch_7
    const-string v0, "TYPE_GESTURE_DETECTION_START"

    return-object v0

    .line 1630
    :sswitch_8
    const-string v0, "TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 1627
    :sswitch_9
    const-string v0, "TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED"

    return-object v0

    .line 1625
    :sswitch_a
    const-string v0, "TYPE_VIEW_ACCESSIBILITY_FOCUSED"

    return-object v0

    .line 1624
    :sswitch_b
    const-string v0, "TYPE_ANNOUNCEMENT"

    return-object v0

    .line 1622
    :sswitch_c
    const-string v0, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    return-object v0

    .line 1623
    :sswitch_d
    const-string v0, "TYPE_VIEW_SCROLLED"

    return-object v0

    .line 1621
    :sswitch_e
    const-string v0, "TYPE_WINDOW_CONTENT_CHANGED"

    return-object v0

    .line 1620
    :sswitch_f
    const-string v0, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    return-object v0

    .line 1618
    :sswitch_10
    const-string v0, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    return-object v0

    .line 1615
    :sswitch_11
    const-string v0, "TYPE_VIEW_HOVER_EXIT"

    return-object v0

    .line 1614
    :sswitch_12
    const-string v0, "TYPE_VIEW_HOVER_ENTER"

    return-object v0

    .line 1616
    :sswitch_13
    const-string v0, "TYPE_NOTIFICATION_STATE_CHANGED"

    return-object v0

    .line 1613
    :sswitch_14
    const-string v0, "TYPE_WINDOW_STATE_CHANGED"

    return-object v0

    .line 1612
    :sswitch_15
    const-string v0, "TYPE_VIEW_TEXT_CHANGED"

    return-object v0

    .line 1611
    :sswitch_16
    const-string v0, "TYPE_VIEW_FOCUSED"

    return-object v0

    .line 1610
    :sswitch_17
    const-string v0, "TYPE_VIEW_SELECTED"

    return-object v0

    .line 1609
    :sswitch_18
    const-string v0, "TYPE_VIEW_LONG_CLICKED"

    return-object v0

    .line 1608
    :sswitch_19
    const-string v0, "TYPE_VIEW_CLICKED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_19
        0x2 -> :sswitch_18
        0x4 -> :sswitch_17
        0x8 -> :sswitch_16
        0x10 -> :sswitch_15
        0x20 -> :sswitch_14
        0x40 -> :sswitch_13
        0x80 -> :sswitch_12
        0x100 -> :sswitch_11
        0x200 -> :sswitch_10
        0x400 -> :sswitch_f
        0x800 -> :sswitch_e
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_c
        0x4000 -> :sswitch_b
        0x8000 -> :sswitch_a
        0x10000 -> :sswitch_9
        0x20000 -> :sswitch_8
        0x40000 -> :sswitch_7
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_5
        0x200000 -> :sswitch_4
        0x400000 -> :sswitch_3
        0x800000 -> :sswitch_2
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist singleSpeechStateChangeTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 1112
    sparse-switch p0, :sswitch_data_0

    .line 1122
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1120
    :sswitch_0
    const-string v0, "SPEECH_STATE_LISTENING_END"

    return-object v0

    .line 1116
    :sswitch_1
    const-string v0, "SPEECH_STATE_LISTENING_START"

    return-object v0

    .line 1118
    :sswitch_2
    const-string v0, "SPEECH_STATE_SPEAKING_END"

    return-object v0

    .line 1114
    :sswitch_3
    const-string v0, "SPEECH_STATE_SPEAKING_START"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist-max-o singleWindowChangeTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 1164
    sparse-switch p0, :sswitch_data_0

    .line 1177
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1176
    :sswitch_0
    const-string v0, "WINDOWS_CHANGE_PIP"

    return-object v0

    .line 1175
    :sswitch_1
    const-string v0, "WINDOWS_CHANGE_CHILDREN"

    return-object v0

    .line 1174
    :sswitch_2
    const-string v0, "WINDOWS_CHANGE_PARENT"

    return-object v0

    .line 1173
    :sswitch_3
    const-string v0, "WINDOWS_CHANGE_ACCESSIBILITY_FOCUSED"

    return-object v0

    .line 1171
    :sswitch_4
    const-string v0, "WINDOWS_CHANGE_FOCUSED"

    return-object v0

    .line 1170
    :sswitch_5
    const-string v0, "WINDOWS_CHANGE_ACTIVE"

    return-object v0

    .line 1169
    :sswitch_6
    const-string v0, "WINDOWS_CHANGE_LAYER"

    return-object v0

    .line 1168
    :sswitch_7
    const-string v0, "WINDOWS_CHANGE_BOUNDS"

    return-object v0

    .line 1167
    :sswitch_8
    const-string v0, "WINDOWS_CHANGE_TITLE"

    return-object v0

    .line 1166
    :sswitch_9
    const-string v0, "WINDOWS_CHANGE_REMOVED"

    return-object v0

    .line 1165
    :sswitch_a
    const-string v0, "WINDOWS_CHANGE_ADDED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x4 -> :sswitch_8
        0x8 -> :sswitch_7
        0x10 -> :sswitch_6
        0x20 -> :sswitch_5
        0x40 -> :sswitch_4
        0x80 -> :sswitch_3
        0x100 -> :sswitch_2
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist speechStateChangeTypesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "types"    # I

    .line 1107
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o windowChangeTypesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "types"    # I

    .line 1160
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 1504
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1505
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1512
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1518
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1519
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1520
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1521
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1522
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1524
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1526
    return-void
.end method


# virtual methods
.method public whitelist appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 1
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 1006
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1007
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1010
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    return-void
.end method

.method protected greylist-max-o clear()V
    .locals 3

    .line 1369
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 1370
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1371
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1372
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1373
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1374
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1375
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1376
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1377
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1378
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1379
    :goto_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1380
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 1381
    goto :goto_0

    .line 1384
    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1532
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .locals 1

    .line 1285
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    return v0
.end method

.method public whitelist getContentChangeTypes()I
    .locals 1

    .line 1054
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    return v0
.end method

.method public whitelist getEventTime()J
    .locals 2

    .line 1200
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    return-wide v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 1032
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    return v0
.end method

.method public whitelist getMovementGranularity()I
    .locals 1

    .line 1254
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .line 1221
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
    .locals 3
    .param p1, "index"    # I

    .line 1020
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    return-object v0

    .line 1021
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRecordCount()I
    .locals 1

    .line 995
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getSpeechStateChangeTypes()I
    .locals 1

    .line 1103
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    return v0
.end method

.method public whitelist getWindowChanges()I
    .locals 1

    .line 1151
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    return v0
.end method

.method greylist-max-o init(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 948
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 949
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 950
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 951
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 952
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 953
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 954
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 955
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 956
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 957
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 959
    .local v0, "recordCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 960
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 961
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    .line 962
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    new-instance v3, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v3, v2}, Landroid/view/accessibility/AccessibilityRecord;-><init>(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 963
    .local v3, "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v3    # "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 967
    .end local v0    # "recordCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist initFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mSealed:Z

    .line 1393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1399
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1400
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    .line 1402
    invoke-direct {p0, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1406
    .local v0, "recordCount":I
    if-lez v0, :cond_1

    .line 1407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 1408
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1409
    new-instance v2, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 1410
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1411
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    iput v3, v2, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 1412
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1426
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1360
    return-void
.end method

.method public whitelist setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .line 1275
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1276
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    .line 1277
    return-void
.end method

.method public whitelist setContentChangeTypes(I)V
    .locals 0
    .param p1, "changeTypes"    # I

    .line 1090
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1091
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1092
    return-void
.end method

.method public whitelist setEventTime(J)V
    .locals 0
    .param p1, "eventTime"    # J

    .line 1211
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1212
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    .line 1213
    return-void
.end method

.method public whitelist setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .line 1190
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1191
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    .line 1192
    return-void
.end method

.method public whitelist setMovementGranularity(I)V
    .locals 0
    .param p1, "granularity"    # I

    .line 1244
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1245
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    .line 1246
    return-void
.end method

.method public whitelist setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .line 1232
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1233
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    .line 1234
    return-void
.end method

.method public greylist-max-o setSealed(Z)V
    .locals 4
    .param p1, "sealed"    # Z

    .line 978
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 979
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    .line 980
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRecord;>;"
    if-eqz v0, :cond_0

    .line 981
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 982
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 983
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityRecord;

    .line 984
    .local v3, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 982
    .end local v3    # "record":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 987
    .end local v1    # "recordCount":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist setSpeechStateChangeTypes(I)V
    .locals 0
    .param p1, "state"    # I

    .line 1139
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    .line 1140
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    .line 1141
    return-void
.end method

.method public greylist-max-o setWindowChanges(I)V
    .locals 0
    .param p1, "changes"    # I

    .line 1156
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1157
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1538
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "EventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    const-string v1, "; EventTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1540
    const-string v1, "; PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1542
    const-string v1, "; MovementGranularity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1545
    const-string v1, "; Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1548
    const-string v1, "; ContentChangeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    .line 1549
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->contentChangeTypesToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    const-string v1, "; WindowChangeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    .line 1553
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->windowChangeTypesToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    invoke-super {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1556
    sget-boolean v1, Landroid/view/accessibility/AccessibilityEvent;->DEBUG:Z

    if-nez v1, :cond_0

    .line 1570
    const-string v1, "; recordCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1558
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    if-eqz v1, :cond_1

    .line 1561
    const-string v1, "; SourceWindowId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceWindowId:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    const-string v1, "; SourceNodeId: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceNodeId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    const-string v1, "; SourceDisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSourceDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1565
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1566
    const-string v3, "  Record "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1572
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1464
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isSealed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1466
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mWindowChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mSpeechStateChangeTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1472
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1473
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    invoke-direct {p0, p0, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1477
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    .line 1478
    .local v0, "recordCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1480
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    .line 1481
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v2, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1479
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1494
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
