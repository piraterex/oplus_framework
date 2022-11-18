.class public final Landroid/service/autofill/CharSequenceTransformation;
.super Landroid/service/autofill/InternalTransformation;
.source "CharSequenceTransformation.java"

# interfaces
.implements Landroid/service/autofill/Transformation;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/CharSequenceTransformation$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/CharSequenceTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CharSequenceTransformation"


# instance fields
.field private final greylist-max-o mFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/util/Pair<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 212
    new-instance v0, Landroid/service/autofill/CharSequenceTransformation$1;

    invoke-direct {v0}, Landroid/service/autofill/CharSequenceTransformation$1;-><init>()V

    sput-object v0, Landroid/service/autofill/CharSequenceTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/CharSequenceTransformation$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/service/autofill/CharSequenceTransformation$Builder;

    .line 71
    invoke-direct {p0}, Landroid/service/autofill/InternalTransformation;-><init>()V

    .line 72
    invoke-static {p1}, Landroid/service/autofill/CharSequenceTransformation$Builder;->-$$Nest$fgetmFields(Landroid/service/autofill/CharSequenceTransformation$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/CharSequenceTransformation;->mFields:Ljava/util/LinkedHashMap;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/CharSequenceTransformation$Builder;Landroid/service/autofill/CharSequenceTransformation-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/CharSequenceTransformation;-><init>(Landroid/service/autofill/CharSequenceTransformation$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;I)V
    .locals 10
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;
    .param p2, "parentTemplate"    # Landroid/widget/RemoteViews;
    .param p3, "childViewId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "converted":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/autofill/CharSequenceTransformation;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    .line 82
    .local v1, "size":I
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    const-string v3, "CharSequenceTransformation"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " fields on id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v2, p0, Landroid/service/autofill/CharSequenceTransformation;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 84
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/autofill/AutofillId;Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    .line 85
    .local v5, "id":Landroid/view/autofill/AutofillId;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 86
    .local v6, "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    invoke-interface {p1, v5}, Landroid/service/autofill/ValueFinder;->findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No value for id "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 92
    :cond_1
    :try_start_0
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 93
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_3

    .line 94
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Match for "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " failed on id "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    return-void

    .line 98
    :cond_3
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "convertedValue":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .line 106
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/autofill/AutofillId;Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;>;"
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    .end local v6    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "convertedValue":Ljava/lang/String;
    goto :goto_0

    .line 100
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/autofill/AutofillId;Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;>;"
    .restart local v5    # "id":Landroid/view/autofill/AutofillId;
    .restart local v6    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    .restart local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot apply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/util/regex/Pattern;

    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to field with autofill id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    throw v2

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/autofill/AutofillId;Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;>;"
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    .end local v6    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting text on child "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_chars"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v2, "setText"

    invoke-virtual {p2, p3, v2, v0}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 178
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultipleViewsCharSequenceTransformation: [fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/CharSequenceTransformation;->mFields:Ljava/util/LinkedHashMap;

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
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 193
    iget-object v0, p0, Landroid/service/autofill/CharSequenceTransformation;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    .line 194
    .local v0, "size":I
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    .line 195
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    new-array v2, v0, [Ljava/util/regex/Pattern;

    .line 196
    .local v2, "regexs":[Ljava/util/regex/Pattern;
    new-array v3, v0, [Ljava/lang/String;

    .line 198
    .local v3, "substs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 199
    .local v4, "i":I
    iget-object v5, p0, Landroid/service/autofill/CharSequenceTransformation;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 200
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/autofill/AutofillId;Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    aput-object v7, v1, v4

    .line 201
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 202
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/util/regex/Pattern;

    aput-object v8, v2, v4

    .line 203
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    aput-object v8, v3, v4

    .line 204
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/autofill/AutofillId;Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;>;"
    add-int/lit8 v4, v4, 0x1

    .line 205
    goto :goto_0

    .line 207
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/regex/Pattern;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 208
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 209
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 210
    return-void
.end method
