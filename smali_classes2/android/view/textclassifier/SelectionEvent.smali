.class public final Landroid/view/textclassifier/SelectionEvent;
.super Ljava/lang/Object;
.source "SelectionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SelectionEvent$InvocationMethod;,
        Landroid/view/textclassifier/SelectionEvent$EventType;,
        Landroid/view/textclassifier/SelectionEvent$ActionType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ABANDON:I = 0x6b

.field public static final whitelist ACTION_COPY:I = 0x65

.field public static final whitelist ACTION_CUT:I = 0x67

.field public static final whitelist ACTION_DRAG:I = 0x6a

.field public static final whitelist ACTION_OTHER:I = 0x6c

.field public static final whitelist ACTION_OVERTYPE:I = 0x64

.field public static final whitelist ACTION_PASTE:I = 0x66

.field public static final whitelist ACTION_RESET:I = 0xc9

.field public static final whitelist ACTION_SELECT_ALL:I = 0xc8

.field public static final whitelist ACTION_SHARE:I = 0x68

.field public static final whitelist ACTION_SMART_SHARE:I = 0x69

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/SelectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_AUTO_SELECTION:I = 0x5

.field public static final whitelist EVENT_SELECTION_MODIFIED:I = 0x2

.field public static final whitelist EVENT_SELECTION_STARTED:I = 0x1

.field public static final whitelist EVENT_SMART_SELECTION_MULTI:I = 0x4

.field public static final whitelist EVENT_SMART_SELECTION_SINGLE:I = 0x3

.field public static final whitelist INVOCATION_LINK:I = 0x2

.field public static final whitelist INVOCATION_MANUAL:I = 0x1

.field public static final whitelist INVOCATION_UNKNOWN:I = 0x0

.field static final greylist-max-o NO_SIGNATURE:Ljava/lang/String; = ""


# instance fields
.field private final greylist-max-o mAbsoluteEnd:I

.field private final greylist-max-o mAbsoluteStart:I

.field private greylist-max-o mDurationSincePreviousEvent:J

.field private greylist-max-o mDurationSinceSessionStart:J

.field private greylist-max-o mEnd:I

.field private greylist-max-o mEntityType:Ljava/lang/String;

.field private greylist-max-o mEventIndex:I

.field private greylist-max-o mEventTime:J

.field private greylist-max-o mEventType:I

.field private greylist-max-o mInvocationMethod:I

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private greylist-max-o mResultId:Ljava/lang/String;

.field private greylist-max-o mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private greylist-max-o mSmartEnd:I

.field private greylist-max-o mSmartStart:I

.field private greylist-max-o mStart:I

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private greylist-max-o mWidgetType:Ljava/lang/String;

.field private greylist-max-o mWidgetVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 693
    new-instance v0, Landroid/view/textclassifier/SelectionEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/SelectionEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/SelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "eventType"    # I
    .param p4, "entityType"    # Ljava/lang/String;
    .param p5, "invocationMethod"    # I
    .param p6, "resultId"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 146
    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    .line 148
    iput p2, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    .line 149
    iput p3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    .line 150
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 151
    iput-object p6, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    .line 152
    iput p5, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 153
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-string v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 170
    sget-object v0, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationSessionId;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    .line 175
    const-class v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 176
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/SelectionEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/SelectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o checkActionType(I)V
    .locals 5
    .param p0, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 344
    sparse-switch p0, :sswitch_data_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 359
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d is not an eventType"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :sswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist createSelectionActionEvent(III)Landroid/view/textclassifier/SelectionEvent;
    .locals 9
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "actionType"    # I

    .line 304
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 305
    invoke-static {p2}, Landroid/view/textclassifier/SelectionEvent;->checkActionType(I)V

    .line 306
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v7, 0x0

    const-string v6, ""

    const-string v8, ""

    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSelectionActionEvent(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "actionType"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 329
    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 330
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {p2}, Landroid/view/textclassifier/SelectionEvent;->checkActionType(I)V

    .line 332
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 333
    invoke-virtual {p3, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 334
    :cond_1
    const-string v0, ""

    move-object v5, v0

    :goto_1
    nop

    .line 335
    .local v5, "entityType":Ljava/lang/String;
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v6, 0x0

    .line 336
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 335
    return-object v0
.end method

.method public static whitelist createSelectionModifiedEvent(II)Landroid/view/textclassifier/SelectionEvent;
    .locals 9
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 237
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 238
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v5, 0x2

    const/4 v7, 0x0

    const-string v6, ""

    const-string v8, ""

    move-object v2, v0

    move v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSelectionModifiedEvent(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 257
    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 258
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 260
    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 261
    :cond_1
    const-string v0, ""

    move-object v5, v0

    :goto_1
    nop

    .line 262
    .local v5, "entityType":Ljava/lang/String;
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 264
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 262
    return-object v0
.end method

.method public static whitelist createSelectionModifiedEvent(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "selection"    # Landroid/view/textclassifier/TextSelection;

    .line 281
    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 282
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 284
    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextSelection;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 285
    :cond_1
    const-string v0, ""

    move-object v5, v0

    :goto_1
    nop

    .line 286
    .local v5, "entityType":Ljava/lang/String;
    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v4, 0x5

    const/4 v6, 0x0

    .line 288
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    .line 286
    return-object v0
.end method

.method public static whitelist createSelectionStartedEvent(II)Landroid/view/textclassifier/SelectionEvent;
    .locals 8
    .param p0, "invocationMethod"    # I
    .param p1, "start"    # I

    .line 221
    new-instance v7, Landroid/view/textclassifier/SelectionEvent;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    const-string v6, ""

    move-object v0, v7

    move v1, p1

    move v5, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v7
.end method

.method public static whitelist isTerminal(I)Z
    .locals 1
    .param p0, "eventType"    # I

    .line 623
    packed-switch p0, :pswitch_data_0

    .line 635
    const/4 v0, 0x0

    return v0

    .line 633
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
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


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 649
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 650
    return v0

    .line 652
    :cond_0
    instance-of v1, p1, Landroid/view/textclassifier/SelectionEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 653
    return v2

    .line 656
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/textclassifier/SelectionEvent;

    .line 657
    .local v1, "other":Landroid/view/textclassifier/SelectionEvent;
    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 660
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    .line 661
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 662
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 663
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    .line 665
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 670
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 657
    :goto_0
    return v0
.end method

.method greylist-max-o getAbsoluteEnd()I
    .locals 1

    .line 368
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    return v0
.end method

.method greylist-max-o getAbsoluteStart()I
    .locals 1

    .line 364
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    return v0
.end method

.method public whitelist getDurationSincePreviousEvent()J
    .locals 2

    .line 517
    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    return-wide v0
.end method

.method public whitelist getDurationSinceSessionStart()J
    .locals 2

    .line 504
    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    return-wide v0
.end method

.method public whitelist getEnd()I
    .locals 1

    .line 574
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    return v0
.end method

.method public whitelist getEntityType()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEventIndex()I
    .locals 1

    .line 529
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    return v0
.end method

.method public whitelist getEventTime()J
    .locals 2

    .line 491
    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    return-wide v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 376
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    return v0
.end method

.method public whitelist getInvocationMethod()I
    .locals 1

    .line 462
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultId()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1

    .line 544
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object v0
.end method

.method public whitelist getSmartEnd()I
    .locals 1

    .line 604
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    return v0
.end method

.method public whitelist getSmartStart()I
    .locals 1

    .line 589
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    return v0
.end method

.method public whitelist getStart()I
    .locals 1

    .line 559
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    return v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 1

    .line 426
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getWidgetType()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidgetVersion()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 641
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 642
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    .line 643
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    .line 644
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 641
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method greylist-max-o isTerminal()Z
    .locals 1

    .line 615
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v0}, Landroid/view/textclassifier/SelectionEvent;->isTerminal(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o setDurationSincePreviousEvent(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "durationMs"    # J

    .line 521
    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    .line 522
    return-object p0
.end method

.method greylist-max-o setDurationSinceSessionStart(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "durationMs"    # J

    .line 508
    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    .line 509
    return-object p0
.end method

.method public greylist-max-o setEnd(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "end"    # I

    .line 580
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    .line 581
    return-object p0
.end method

.method blacklist setEntityType(Ljava/lang/String;)V
    .locals 1
    .param p1, "entityType"    # Ljava/lang/String;

    .line 399
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public greylist-max-o setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "index"    # I

    .line 535
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    .line 536
    return-object p0
.end method

.method greylist-max-o setEventTime(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "timeMs"    # J

    .line 495
    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    .line 496
    return-object p0
.end method

.method public greylist-max-o setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    .line 385
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    .line 386
    return-void
.end method

.method public greylist-max-o setInvocationMethod(I)V
    .locals 0
    .param p1, "invocationMethod"    # I

    .line 471
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 472
    return-void
.end method

.method greylist-max-o setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "resultId"    # Ljava/lang/String;

    .line 483
    iput-object p1, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    .line 484
    return-object p0
.end method

.method public greylist-max-o setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "id"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 550
    iput-object p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 551
    return-object p0
.end method

.method public greylist-max-o setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "end"    # I

    .line 610
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    .line 611
    return-object p0
.end method

.method public greylist-max-o setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "start"    # I

    .line 595
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    .line 596
    return-object p0
.end method

.method public greylist-max-o setStart(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0
    .param p1, "start"    # I

    .line 565
    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    .line 566
    return-object p0
.end method

.method blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .locals 0
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 416
    iput-object p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 417
    return-void
.end method

.method public greylist-max-o setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 1
    .param p1, "context"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 452
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getWidgetType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getWidgetVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 456
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 680
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    .line 687
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    .line 688
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    .line 689
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    .line 690
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    iget v2, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 680
    const-string v2, "SelectionEvent {absoluteStart=%d, absoluteEnd=%d, eventType=%d, entityType=%s, widgetVersion=%s, packageName=%s, widgetType=%s, invocationMethod=%s, resultId=%s, eventTime=%d, durationSinceSessionStart=%d, durationSincePreviousEvent=%d, eventIndex=%d,sessionId=%s, start=%d, end=%d, smartStart=%d, smartEnd=%d, systemTcMetadata=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    :cond_1
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/TextClassificationSessionId;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    :cond_3
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    return-void
.end method
