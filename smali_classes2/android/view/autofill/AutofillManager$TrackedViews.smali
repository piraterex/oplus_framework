.class Landroid/view/autofill/AutofillManager$TrackedViews;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedViews"
.end annotation


# instance fields
.field private greylist-max-o mInvisibleTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVisibleTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInvisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisibleTrackedIds(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)V
    .locals 7
    .param p2, "trackedIds"    # [Landroid/view/autofill/AutofillId;

    .line 3580
    iput-object p1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3581
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3582
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AutofillManager"

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 3585
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsVisibleForAutofill()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3586
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "client is visible, check tracked ids"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    :cond_0
    invoke-interface {v0, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z

    move-result-object v1

    .local v1, "isVisible":[Z
    goto :goto_0

    .line 3590
    .end local v1    # "isVisible":[Z
    :cond_1
    array-length v1, p2

    new-array v1, v1, [Z

    .line 3593
    .restart local v1    # "isVisible":[Z
    :goto_0
    array-length v3, p2

    .line 3594
    .local v3, "numIds":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 3595
    aget-object v5, p2, v4

    .line 3596
    .local v5, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v5}, Landroid/view/autofill/AutofillId;->resetSessionId()V

    .line 3598
    aget-boolean v6, v1, v4

    if-eqz v6, :cond_2

    .line 3599
    iget-object v6, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v6, v5}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v6

    iput-object v6, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    goto :goto_2

    .line 3601
    :cond_2
    iget-object v6, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v6, v5}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v6

    iput-object v6, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    .line 3594
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3606
    .end local v1    # "isVisible":[Z
    .end local v3    # "numIds":I
    .end local v4    # "i":I
    :cond_3
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_4

    .line 3607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TrackedViews(trackedIds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "):  mVisibleTrackedIds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mInvisibleTrackedIds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_4
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v1, :cond_5

    .line 3613
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V

    .line 3615
    :cond_5
    return-void
.end method

.method private greylist-max-o addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 3541
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p2, "valueToAdd":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 3542
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    move-object p1, v0

    .line 3545
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3547
    return-object p1
.end method

.method private greylist-max-o isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 3526
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 3562
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p2, "valueToRemove":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3563
    return-object v0

    .line 3566
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3568
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3569
    return-object v0

    .line 3572
    :cond_1
    return-object p1
.end method


# virtual methods
.method greylist-max-o notifyViewVisibilityChangedLocked(Landroid/view/autofill/AutofillId;Z)V
    .locals 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "isVisible"    # Z

    .line 3625
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    const-string v1, "AutofillManager"

    if-eqz v0, :cond_0

    .line 3626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyViewVisibilityChangedLocked(): id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$misClientVisibleForAutofillLocked(Landroid/view/autofill/AutofillManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3631
    if-eqz p2, :cond_1

    .line 3632
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3633
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    .line 3634
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    goto :goto_0

    .line 3637
    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3638
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    .line 3639
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    .line 3644
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v0, :cond_4

    .line 3645
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3

    .line 3646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more visible ids. Invisible = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    :cond_3
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V

    .line 3650
    :cond_4
    return-void
.end method

.method greylist-max-o onVisibleForAutofillChangedLocked()V
    .locals 12

    .line 3661
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3662
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    const/4 v1, 0x0

    .line 3663
    .local v1, "updatedVisibleTrackedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const/4 v2, 0x0

    .line 3664
    .local v2, "updatedInvisibleTrackedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const-string v3, "AutofillManager"

    if-eqz v0, :cond_7

    .line 3665
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_0

    .line 3666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVisibleForAutofillChangedLocked(): inv= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    :cond_0
    iget-object v4, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    const-string v5, "onVisibleForAutofill() "

    if-eqz v4, :cond_3

    .line 3670
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3672
    .local v4, "orderedInvisibleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    nop

    .line 3673
    invoke-static {v4}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v6

    .line 3672
    invoke-interface {v0, v6}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z

    move-result-object v6

    .line 3675
    .local v6, "isVisible":[Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3676
    .local v7, "numInvisibleTrackedIds":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_3

    .line 3677
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    .line 3678
    .local v9, "id":Landroid/view/autofill/AutofillId;
    aget-boolean v10, v6, v8

    if-eqz v10, :cond_1

    .line 3679
    invoke-direct {p0, v1, v9}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 3681
    sget-boolean v10, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_2

    .line 3682
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " became visible"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3685
    :cond_1
    invoke-direct {p0, v2, v9}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    .line 3676
    .end local v9    # "id":Landroid/view/autofill/AutofillId;
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3690
    .end local v4    # "orderedInvisibleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "isVisible":[Z
    .end local v7    # "numInvisibleTrackedIds":I
    .end local v8    # "i":I
    :cond_3
    iget-object v4, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-eqz v4, :cond_6

    .line 3691
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3693
    .local v4, "orderedVisibleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    nop

    .line 3694
    invoke-static {v4}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v6

    .line 3693
    invoke-interface {v0, v6}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z

    move-result-object v6

    .line 3696
    .restart local v6    # "isVisible":[Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3697
    .local v7, "numVisibleTrackedIds":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v7, :cond_6

    .line 3698
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    .line 3700
    .restart local v9    # "id":Landroid/view/autofill/AutofillId;
    aget-boolean v10, v6, v8

    if-eqz v10, :cond_4

    .line 3701
    invoke-direct {p0, v1, v9}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_3

    .line 3703
    :cond_4
    invoke-direct {p0, v2, v9}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    .line 3705
    sget-boolean v10, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_5

    .line 3706
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " became invisible"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    .end local v9    # "id":Landroid/view/autofill/AutofillId;
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3712
    .end local v4    # "orderedVisibleIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "isVisible":[Z
    .end local v7    # "numVisibleTrackedIds":I
    .end local v8    # "i":I
    :cond_6
    iput-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    .line 3713
    iput-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    .line 3716
    :cond_7
    iget-object v4, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v4, :cond_9

    .line 3717
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_8

    .line 3718
    const-string v4, "onVisibleForAutofillChangedLocked(): no more visible ids"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    :cond_8
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/view/autofill/AutofillManager;->-$$Nest$mfinishSessionLocked(Landroid/view/autofill/AutofillManager;I)V

    .line 3722
    :cond_9
    return-void
.end method
