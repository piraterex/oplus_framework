.class public final Landroid/service/autofill/SaveInfo$Builder;
.super Ljava/lang/Object;
.source "SaveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCustomDescription:Landroid/service/autofill/CustomDescription;

.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mDestroyed:Z

.field private greylist-max-o mFlags:I

.field private greylist-max-o mNegativeActionListener:Landroid/content/IntentSender;

.field private greylist-max-o mNegativeButtonStyle:I

.field private greylist-max-o mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private blacklist mPositiveButtonStyle:I

.field private final greylist-max-o mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private greylist-max-o mSanitizerIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSanitizers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/service/autofill/InternalSanitizer;",
            "[",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTriggerId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mType:I

.field private greylist-max-o mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCustomDescription(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOptionalIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositiveButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mPositiveButtonStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequiredIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerId(Landroid/service/autofill/SaveInfo$Builder;)Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValidator(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    .line 440
    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mPositiveButtonStyle:I

    .line 493
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 495
    return-void
.end method

.method public constructor whitelist <init>(I[Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "requiredIds"    # [Landroid/view/autofill/AutofillId;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    .line 440
    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mPositiveButtonStyle:I

    .line 472
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    .line 473
    invoke-static {p2}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 474
    return-void
.end method

.method private greylist-max-o throwIfDestroyed()V
    .locals 2

    .line 796
    iget-boolean v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 799
    return-void

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs whitelist addSanitizer(Landroid/service/autofill/Sanitizer;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 8
    .param p1, "sanitizer"    # Landroid/service/autofill/Sanitizer;
    .param p2, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 735
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 736
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "ids cannot be empty or null"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 737
    instance-of v0, p1, Landroid/service/autofill/InternalSanitizer;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v4, "not provided by Android System: %s"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 740
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    .line 742
    new-instance v0, Landroid/util/ArraySet;

    array-length v2, p2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    .line 746
    :cond_0
    array-length v0, p2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 747
    .local v4, "id":Landroid/view/autofill/AutofillId;
    iget-object v5, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v1

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const-string v7, "already added %s"

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 748
    iget-object v5, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 746
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 751
    :cond_1
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    move-object v1, p1

    check-cast v1, Landroid/service/autofill/InternalSanitizer;

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    return-object p0
.end method

.method public whitelist build()Landroid/service/autofill/SaveInfo;
    .locals 3

    .line 786
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 787
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 788
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 787
    :goto_1
    const-string/jumbo v2, "must have at least one required or optional id or FLAG_DELAYED_SAVE"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 791
    iput-boolean v1, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    .line 792
    new-instance v0, Landroid/service/autofill/SaveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo-IA;)V

    return-object v0
.end method

.method public whitelist setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 2
    .param p1, "customDescription"    # Landroid/service/autofill/CustomDescription;

    .line 563
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 564
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can call setDescription() or setCustomDescription(), but not both"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 566
    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    .line 567
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 543
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 544
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can call setDescription() or setCustomDescription(), but not both"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 546
    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 547
    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1
    .param p1, "flags"    # I

    .line 505
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 507
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    .line 510
    return-object p0
.end method

.method public whitelist setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3
    .param p1, "style"    # I
    .param p2, "listener"    # Landroid/content/IntentSender;

    .line 592
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 593
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string/jumbo v2, "style"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 595
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    .line 596
    iput-object p2, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    .line 597
    return-object p0
.end method

.method public whitelist setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 525
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 526
    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    .line 527
    return-object p0
.end method

.method public whitelist setPositiveAction(I)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3
    .param p1, "style"    # I

    .line 620
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 621
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "style"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 623
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mPositiveButtonStyle:I

    .line 624
    return-object p0
.end method

.method public whitelist setTriggerId(Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 772
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 773
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mTriggerId:Landroid/view/autofill/AutofillId;

    .line 774
    return-object p0
.end method

.method public whitelist setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3
    .param p1, "validator"    # Landroid/service/autofill/Validator;

    .line 689
    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    .line 690
    instance-of v0, p1, Landroid/service/autofill/InternalValidator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "not provided by Android System: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 692
    move-object v0, p1

    check-cast v0, Landroid/service/autofill/InternalValidator;

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mValidator:Landroid/service/autofill/InternalValidator;

    .line 693
    return-object p0
.end method
