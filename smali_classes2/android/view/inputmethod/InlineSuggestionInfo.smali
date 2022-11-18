.class public final Landroid/view/inputmethod/InlineSuggestionInfo;
.super Ljava/lang/Object;
.source "InlineSuggestionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestionInfo$Type;,
        Landroid/view/inputmethod/InlineSuggestionInfo$Source;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SOURCE_AUTOFILL:Ljava/lang/String; = "android:autofill"

.field public static final whitelist SOURCE_PLATFORM:Ljava/lang/String; = "android:platform"

.field public static final whitelist TYPE_ACTION:Ljava/lang/String; = "android:autofill:action"

.field public static final whitelist TYPE_SUGGESTION:Ljava/lang/String; = "android:autofill:suggestion"


# instance fields
.field private final blacklist mAutofillHints:[Ljava/lang/String;

.field private final blacklist mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

.field private final blacklist mPinned:Z

.field private final blacklist mSource:Ljava/lang/String;

.field private final blacklist mTooltip:Landroid/view/inputmethod/InlineSuggestion;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 376
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestionInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 334
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 335
    .local v1, "pinned":Z
    :goto_0
    sget-object v2, Landroid/widget/inline/InlinePresentationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/inline/InlinePresentationSpec;

    .line 336
    .local v2, "inlinePresentationSpec":Landroid/widget/inline/InlinePresentationSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "source":Ljava/lang/String;
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "autofillHints":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "type":Ljava/lang/String;
    and-int/lit8 v7, v0, 0x20

    if-nez v7, :cond_2

    move-object v7, v5

    goto :goto_2

    :cond_2
    sget-object v7, Landroid/view/inputmethod/InlineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InlineSuggestion;

    .line 341
    .local v7, "tooltip":Landroid/view/inputmethod/InlineSuggestion;
    :goto_2
    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 342
    const-class v8, Landroid/annotation/NonNull;

    invoke-static {v8, v5, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 344
    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    .line 346
    const-string v8, "android:autofill"

    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, ")"

    if-nez v9, :cond_4

    .line 347
    const-string v9, "android:platform"

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    .line 348
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "source was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but must be one of: SOURCE_AUTOFILL("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "), SOURCE_PLATFORM("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 354
    :cond_4
    :goto_3
    const-class v8, Landroid/annotation/NonNull;

    invoke-static {v8, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 356
    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    .line 357
    iput-object v6, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    .line 359
    const-string v8, "android:autofill:suggestion"

    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 360
    const-string v9, "android:autofill:action"

    invoke-static {v6, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_4

    .line 361
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but must be one of: TYPE_SUGGESTION("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "), TYPE_ACTION("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 367
    :cond_6
    :goto_4
    const-class v8, Landroid/annotation/NonNull;

    invoke-static {v8, v5, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 369
    iput-boolean v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    .line 370
    iput-object v7, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    .line 373
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V
    .locals 6
    .param p1, "inlinePresentationSpec"    # Landroid/widget/inline/InlinePresentationSpec;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "autofillHints"    # [Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "pinned"    # Z
    .param p6, "tooltip"    # Landroid/view/inputmethod/InlineSuggestion;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 170
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 172
    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    .line 174
    const-string v0, "android:autofill"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ")"

    if-nez v2, :cond_1

    .line 175
    const-string v2, "android:platform"

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "source was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but must be one of: SOURCE_AUTOFILL("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "), SOURCE_PLATFORM("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    :goto_0
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 184
    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    .line 185
    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    .line 187
    const-string v0, "android:autofill:suggestion"

    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 188
    const-string v2, "android:autofill:action"

    invoke-static {p4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but must be one of: TYPE_SUGGESTION("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "), TYPE_ACTION("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_3
    :goto_1
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 197
    iput-boolean p5, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    .line 198
    iput-object p6, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    .line 201
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    return-void
.end method

.method public static blacklist newInlineSuggestionInfo(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InlineSuggestionInfo;
    .locals 8
    .param p0, "presentationSpec"    # Landroid/widget/inline/InlinePresentationSpec;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "autofillHints"    # [Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "isPinned"    # Z

    .line 92
    new-instance v7, Landroid/view/inputmethod/InlineSuggestionInfo;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    return-object v7
.end method

.method public static blacklist newInlineSuggestionInfo(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestionInfo;
    .locals 8
    .param p0, "presentationSpec"    # Landroid/widget/inline/InlinePresentationSpec;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "autofillHints"    # [Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "isPinned"    # Z
    .param p5, "tooltip"    # Landroid/view/inputmethod/InlineSuggestion;

    .line 107
    new-instance v7, Landroid/view/inputmethod/InlineSuggestionInfo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    return-object v7
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 275
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 277
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 279
    .local v2, "that":Landroid/view/inputmethod/InlineSuggestionInfo;
    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 280
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    .line 281
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    .line 282
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    .line 283
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    iget-boolean v4, v2, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    .line 285
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 279
    :goto_0
    return v0

    .line 275
    .end local v2    # "that":Landroid/view/inputmethod/InlineSuggestionInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAutofillHints()[Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    return-object v0
.end method

.method public whitelist getSource()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTooltip()Landroid/view/inputmethod/InlineSuggestion;
    .locals 1

    .line 248
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 296
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 297
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 298
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 299
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 300
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 301
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist isPinned()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestionInfo { inlinePresentationSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autofillHints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    .line 260
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tooltip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mPinned:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 312
    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 313
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 314
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 315
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mInlinePresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 316
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mAutofillHints:[Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 318
    :cond_3
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionInfo;->mTooltip:Landroid/view/inputmethod/InlineSuggestion;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 320
    :cond_4
    return-void
.end method
