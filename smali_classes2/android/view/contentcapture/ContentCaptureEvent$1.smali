.class Landroid/view/contentcapture/ContentCaptureEvent$1;
.super Ljava/lang/Object;
.source "ContentCaptureEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 11
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 620
    .local v0, "sessionId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 621
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 622
    .local v2, "eventTime":J
    new-instance v4, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/view/contentcapture/ContentCaptureEvent;-><init>(IIJ)V

    .line 623
    .local v4, "event":Landroid/view/contentcapture/ContentCaptureEvent;
    const-class v5, Landroid/view/autofill/AutofillId;

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    .line 624
    .local v5, "id":Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_0

    .line 625
    invoke-virtual {v4, v5}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 627
    :cond_0
    sget-object v7, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 628
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz v7, :cond_1

    .line 629
    invoke-virtual {v4, v7}, Landroid/view/contentcapture/ContentCaptureEvent;->setAutofillIds(Ljava/util/ArrayList;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 631
    :cond_1
    invoke-static {p1}, Landroid/view/contentcapture/ViewNode;->readFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ViewNode;

    move-result-object v8

    .line 632
    .local v8, "node":Landroid/view/contentcapture/ViewNode;
    if-eqz v8, :cond_2

    .line 633
    invoke-virtual {v4, v8}, Landroid/view/contentcapture/ContentCaptureEvent;->setViewNode(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 635
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setText(Ljava/lang/CharSequence;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 636
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    const/4 v10, -0x2

    if-ne v1, v10, :cond_4

    .line 637
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/contentcapture/ContentCaptureEvent;->setParentSessionId(I)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 639
    :cond_4
    if-eq v1, v9, :cond_5

    const/4 v9, 0x6

    if-ne v1, v9, :cond_6

    .line 640
    :cond_5
    const-class v9, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v4, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setClientContext(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 642
    :cond_6
    const/16 v9, 0x9

    if-ne v1, v9, :cond_7

    .line 643
    const-class v9, Landroid/graphics/Insets;

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Insets;

    invoke-virtual {v4, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setInsets(Landroid/graphics/Insets;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 645
    :cond_7
    const/16 v9, 0xa

    if-ne v1, v9, :cond_8

    .line 646
    const-class v9, Landroid/graphics/Rect;

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/contentcapture/ContentCaptureEvent;->setBounds(Landroid/graphics/Rect;)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 648
    :cond_8
    const/4 v6, 0x3

    if-ne v1, v6, :cond_9

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v4, v6, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setComposingIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 650
    invoke-static {v4}, Landroid/view/contentcapture/ContentCaptureEvent;->-$$Nest$mrestoreComposingSpan(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v4, v6, v9}, Landroid/view/contentcapture/ContentCaptureEvent;->setSelectionIndex(II)Landroid/view/contentcapture/ContentCaptureEvent;

    .line 652
    invoke-static {v4}, Landroid/view/contentcapture/ContentCaptureEvent;->-$$Nest$mrestoreSelectionSpans(Landroid/view/contentcapture/ContentCaptureEvent;)V

    .line 654
    :cond_9
    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/contentcapture/ContentCaptureEvent;
    .locals 1
    .param p1, "size"    # I

    .line 660
    new-array v0, p1, [Landroid/view/contentcapture/ContentCaptureEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 614
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureEvent$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureEvent;

    move-result-object p1

    return-object p1
.end method
