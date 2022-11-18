.class public final Landroid/service/autofill/FillContext;
.super Ljava/lang/Object;
.source "FillContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFocusedId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mRequestId:I

.field private final greylist-max-o mStructure:Landroid/app/assist/AssistStructure;

.field private transient greylist-max-o mViewNodeLookupTable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/app/assist/AssistStructure$ViewNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 245
    new-instance v0, Landroid/service/autofill/FillContext$1;

    invoke-direct {v0}, Landroid/service/autofill/FillContext$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "focusedId"    # Landroid/view/autofill/AutofillId;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    .line 192
    iput-object p2, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    .line 193
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 195
    iput-object p3, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 196
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;
    .locals 10
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 99
    .local v0, "nodesToProcess":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/assist/AssistStructure$ViewNode;>;"
    array-length v1, p1

    new-array v1, v1, [Landroid/app/assist/AssistStructure$ViewNode;

    .line 102
    .local v1, "foundNodes":[Landroid/app/assist/AssistStructure$ViewNode;
    new-instance v2, Landroid/util/SparseIntArray;

    array-length v3, p1

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 104
    .local v2, "missingNodeIndexes":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 105
    iget-object v4, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 106
    aget-object v6, p1, v3

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 108
    .local v4, "lookupTableIndex":I
    if-ltz v4, :cond_0

    .line 109
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v5, v1, v3

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    .end local v4    # "lookupTableIndex":I
    :goto_1
    goto :goto_2

    .line 114
    :cond_1
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v3

    .line 119
    .local v3, "numWindowNodes":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 120
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v5, v4}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 123
    .end local v4    # "i":I
    :cond_3
    :goto_4
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 124
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistStructure$ViewNode;

    .line 126
    .local v4, "node":Landroid/app/assist/AssistStructure$ViewNode;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 127
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 128
    .local v6, "index":I
    aget-object v7, p1, v6

    .line 130
    .local v7, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 131
    aput-object v4, v1, v6

    .line 133
    iget-object v8, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-nez v8, :cond_4

    .line 134
    new-instance v8, Landroid/util/ArrayMap;

    array-length v9, p1

    invoke-direct {v8, v9}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v8, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    .line 137
    :cond_4
    iget-object v8, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 140
    goto :goto_6

    .line 126
    .end local v6    # "index":I
    .end local v7    # "id":Landroid/view/autofill/AutofillId;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 144
    .end local v5    # "i":I
    :cond_6
    :goto_6
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 145
    invoke-virtual {v4, v5}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 147
    .end local v4    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v5    # "i":I
    :cond_7
    goto :goto_4

    .line 150
    :cond_8
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 151
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-nez v5, :cond_9

    .line 152
    new-instance v5, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    .line 155
    :cond_9
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aget-object v6, p1, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 158
    .end local v4    # "i":I
    :cond_a
    return-object v1
.end method

.method public whitelist getFocusedId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getRequestId()I
    .locals 1

    .line 210
    iget v0, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    return v0
.end method

.method public whitelist getStructure()Landroid/app/assist/AssistStructure;
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 83
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillContext [reqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", focusedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 235
    iget v0, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 238
    return-void
.end method
