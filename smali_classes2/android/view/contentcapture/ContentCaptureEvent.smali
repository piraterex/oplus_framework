.class public final Landroid/view/contentcapture/ContentCaptureEvent;
.super Ljava/lang/Object;
.source "ContentCaptureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureEvent$EventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_INVALID_VALUE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist TYPE_CONTEXT_UPDATED:I = 0x6

.field public static final blacklist TYPE_SESSION_FINISHED:I = -0x2

.field public static final whitelist TYPE_SESSION_PAUSED:I = 0x8

.field public static final whitelist TYPE_SESSION_RESUMED:I = 0x7

.field public static final blacklist TYPE_SESSION_STARTED:I = -0x1

.field public static final whitelist TYPE_VIEW_APPEARED:I = 0x1

.field public static final whitelist TYPE_VIEW_DISAPPEARED:I = 0x2

.field public static final whitelist TYPE_VIEW_INSETS_CHANGED:I = 0x9

.field public static final whitelist TYPE_VIEW_TEXT_CHANGED:I = 0x3

.field public static final whitelist TYPE_VIEW_TREE_APPEARED:I = 0x5

.field public static final whitelist TYPE_VIEW_TREE_APPEARING:I = 0x4

.field public static final whitelist TYPE_WINDOW_BOUNDS_CHANGED:I = 0xa


# instance fields
.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private blacklist mComposingEnd:I

.field private blacklist mComposingStart:I

.field private final blacklist mEventTime:J

.field private blacklist mId:Landroid/view/autofill/AutofillId;

.field private blacklist mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private blacklist mNode:Landroid/view/contentcapture/ViewNode;

.field private blacklist mParentSessionId:I

.field private blacklist mSelectionEndIndex:I

.field private blacklist mSelectionStartIndex:I

.field private final blacklist mSessionId:I

.field private blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTextHasComposingSpan:Z

.field private final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrestoreComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureEvent;->restoreComposingSpan()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestoreSelectionSpans(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureEvent;->restoreSelectionSpans()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    const-class v0, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    .line 613
    new-instance v0, Landroid/view/contentcapture/ContentCaptureEvent$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureEvent$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "type"    # I

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(IIJ)V

    .line 180
    return-void
.end method

.method public constructor blacklist <init>(IIJ)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "type"    # I
    .param p3, "eventTime"    # J

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    .line 163
    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    .line 164
    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    .line 165
    iput v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    .line 172
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    .line 173
    iput p2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    .line 174
    iput-wide p3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mEventTime:J

    .line 175
    return-void
.end method

.method private blacklist getComposingEnd()I
    .locals 1

    .line 311
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    return v0
.end method

.method private blacklist getComposingStart()I
    .locals 1

    .line 307
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    return v0
.end method

.method private blacklist getSelectionEnd()I
    .locals 1

    .line 319
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    return v0
.end method

.method private blacklist getSelectionStart()I
    .locals 1

    .line 315
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    return v0
.end method

.method public static blacklist getTypeAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 666
    packed-switch p0, :pswitch_data_0

    .line 692
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UKNOWN_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 690
    :pswitch_1
    const-string v0, "TYPE_WINDOW_BOUNDS_CHANGED"

    return-object v0

    .line 688
    :pswitch_2
    const-string v0, "VIEW_INSETS_CHANGED"

    return-object v0

    .line 674
    :pswitch_3
    const-string v0, "SESSION_PAUSED"

    return-object v0

    .line 672
    :pswitch_4
    const-string v0, "SESSION_RESUMED"

    return-object v0

    .line 686
    :pswitch_5
    const-string v0, "CONTEXT_UPDATED"

    return-object v0

    .line 684
    :pswitch_6
    const-string v0, "VIEW_TREE_APPEARED"

    return-object v0

    .line 682
    :pswitch_7
    const-string v0, "VIEW_TREE_APPEARING"

    return-object v0

    .line 680
    :pswitch_8
    const-string v0, "VIEW_TEXT_CHANGED"

    return-object v0

    .line 678
    :pswitch_9
    const-string v0, "VIEW_DISAPPEARED"

    return-object v0

    .line 676
    :pswitch_a
    const-string v0, "VIEW_APPEARED"

    return-object v0

    .line 668
    :pswitch_b
    const-string v0, "SESSION_STARTED"

    return-object v0

    .line 670
    :pswitch_c
    const-string v0, "SESSION_FINISHED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist restoreComposingSpan()V
    .locals 4

    .line 323
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    if-gt v2, v1, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    instance-of v3, v1, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 328
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0, v2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 331
    :cond_1
    sget-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    const-string v1, "Text is not a Spannable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 325
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist restoreSelectionSpans()V
    .locals 4

    .line 336
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_1

    .line 342
    check-cast v0, Landroid/text/SpannableString;

    .line 343
    .local v0, "ss":Landroid/text/SpannableString;
    sget-object v1, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 344
    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 345
    .end local v0    # "ss":Landroid/text/SpannableString;
    goto :goto_0

    .line 346
    :cond_1
    sget-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    const-string v1, "Text is not a SpannableString."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 338
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist addAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 200
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    .line 203
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_0

    .line 204
    sget-object v0, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAutofillId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called without an initial id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 491
    const-string/jumbo v0, "type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    const-string v0, ", time="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 493
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_0

    .line 494
    const-string v0, ", id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 496
    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 497
    const-string v0, ", ids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 499
    :cond_1
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    if-eqz v0, :cond_2

    .line 500
    const-string v0, ", mNode.id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Landroid/view/contentcapture/ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 502
    :cond_2
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    if-eqz v0, :cond_3

    .line 503
    const-string v0, ", sessionId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 505
    :cond_3
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    if-eqz v0, :cond_4

    .line 506
    const-string v0, ", parentSessionId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 508
    :cond_4
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 509
    const-string v0, ", text="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    :cond_5
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v0, :cond_6

    .line 512
    const-string v0, ", context="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 514
    :cond_6
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    if-eqz v0, :cond_7

    .line 515
    const-string v0, ", insets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 517
    :cond_7
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    .line 518
    const-string v0, ", bounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 520
    :cond_8
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    const-string v1, ")"

    const-string v2, ", "

    const/4 v3, -0x1

    if-le v0, v3, :cond_9

    .line 521
    const-string v0, ", composing("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 522
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    :cond_9
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    if-le v0, v3, :cond_a

    .line 525
    const-string v0, ", selection("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 526
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    :cond_a
    return-void
.end method

.method public whitelist getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 443
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    return-object v0
.end method

.method public whitelist getEventTime()J
    .locals 2

    .line 380
    iget-wide v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mEventTime:J

    return-wide v0
.end method

.method public whitelist getId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 402
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getInsets()Landroid/graphics/Insets;
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getParentSessionId()I
    .locals 1

    .line 247
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    return v0
.end method

.method public blacklist getSessionId()I
    .locals 1

    .line 237
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 423
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 373
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    return v0
.end method

.method public whitelist getViewNode()Landroid/view/contentcapture/ViewNode;
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    return-object v0
.end method

.method public blacklist hasComposingSpan()Z
    .locals 2

    .line 286
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist hasSameComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z
    .locals 2
    .param p1, "other"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 298
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    iget v1, p1, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    iget v1, p1, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist hasSameSelectionSpan(Landroid/view/contentcapture/ContentCaptureEvent;)Z
    .locals 2
    .param p1, "other"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 302
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    iget v1, p1, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    iget v1, p1, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist mergeEvent(Landroid/view/contentcapture/ContentCaptureEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 453
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    .line 455
    .local v0, "eventType":I
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const-string v2, "mergeEvent("

    if-eq v1, v0, :cond_0

    .line 456
    sget-object v1, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") cannot be merged with different eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    .line 457
    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    .line 461
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 462
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getIds()Ljava/util/List;

    move-result-object v1

    .line 463
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 464
    .local v2, "id":Landroid/view/autofill/AutofillId;
    if-eqz v1, :cond_3

    .line 465
    if-eqz v2, :cond_1

    .line 466
    sget-object v3, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got TYPE_VIEW_DISAPPEARED event with both id and ids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 469
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v4}, Landroid/view/contentcapture/ContentCaptureEvent;->addAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 473
    :cond_3
    if-eqz v2, :cond_4

    .line 474
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/ContentCaptureEvent;->addAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 475
    return-void

    .line 477
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeEvent(): got TYPE_VIEW_DISAPPEARED event with neither id or ids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 479
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "id":Landroid/view/autofill/AutofillId;
    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 480
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 481
    invoke-direct {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getComposingStart()I

    move-result v1

    invoke-direct {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getComposingEnd()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 482
    invoke-direct {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSelectionStart()I

    move-result v1

    invoke-direct {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    goto :goto_1

    .line 484
    :cond_6
    sget-object v1, Landroid/view/contentcapture/ContentCaptureEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not support this event type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_1
    return-void
.end method

.method public blacklist setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    .line 185
    return-object p0
.end method

.method public blacklist setAutofillIds(Ljava/util/ArrayList;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)",
            "Landroid/view/contentcapture/ContentCaptureEvent;"
        }
    .end annotation

    .line 190
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    .line 191
    return-object p0
.end method

.method public blacklist setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 360
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    .line 361
    return-object p0
.end method

.method public blacklist setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 0
    .param p1, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 230
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 231
    return-object p0
.end method

.method public blacklist setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 278
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    .line 279
    iput p2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    .line 280
    return-object p0
.end method

.method public blacklist setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 353
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    .line 354
    return-object p0
.end method

.method public blacklist setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 0
    .param p1, "parentSessionId"    # I

    .line 220
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    .line 221
    return-object p0
.end method

.method public blacklist setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 292
    iput p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    .line 293
    iput p2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    .line 294
    return-object p0
.end method

.method public blacklist setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 271
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    .line 272
    return-object p0
.end method

.method public blacklist setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 1
    .param p1, "node"    # Landroid/view/contentcapture/ViewNode;

    .line 264
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ViewNode;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 265
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentCaptureEvent[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    .line 534
    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    .local v0, "string":Ljava/lang/StringBuilder;
    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 536
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    if-eqz v1, :cond_0

    .line 537
    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    :cond_0
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    const-string v3, ", id="

    if-eqz v1, :cond_1

    .line 540
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    :cond_1
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 543
    const-string v1, ", ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 545
    :cond_2
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    const-string v4, ", text="

    if-eqz v1, :cond_3

    .line 546
    invoke-virtual {v1}, Landroid/view/contentcapture/ViewNode;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "className":Ljava/lang/String;
    const-string v5, ", class="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v5}, Landroid/view/contentcapture/ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v3}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 550
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    .line 551
    invoke-virtual {v5}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 554
    .end local v1    # "className":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 555
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    .line 556
    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureHelper;->getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 558
    :cond_4
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    if-eqz v1, :cond_5

    .line 559
    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    :cond_5
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    if-eqz v1, :cond_6

    .line 562
    const-string v1, ", insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    :cond_6
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    .line 565
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    :cond_7
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    const-string v3, "]"

    const-string v4, ","

    if-le v1, v2, :cond_8

    .line 568
    const-string v1, ", composing=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    .line 569
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_8
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    if-le v1, v2, :cond_9

    .line 572
    const-string v1, ", selection=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_9
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 586
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-wide v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 589
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 590
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 591
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mNode:Landroid/view/contentcapture/ViewNode;

    invoke-static {p1, v0, p2}, Landroid/view/contentcapture/ViewNode;->writeToParcel(Landroid/os/Parcel;Landroid/view/contentcapture/ViewNode;I)V

    .line 592
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 593
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 594
    :cond_0
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mParentSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    :cond_1
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 597
    :cond_2
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mClientContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 599
    :cond_3
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 600
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 602
    :cond_4
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 603
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 605
    :cond_5
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 606
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mComposingEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureEvent;->mSelectionEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    :cond_6
    return-void
.end method
