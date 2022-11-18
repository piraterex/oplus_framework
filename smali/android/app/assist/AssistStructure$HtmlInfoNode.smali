.class final Landroid/app/assist/AssistStructure$HtmlInfoNode;
.super Landroid/view/ViewStructure$HtmlInfo;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtmlInfoNode"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistStructure$HtmlInfoNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mNames:[Ljava/lang/String;

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mValues:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2277
    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    .line 2234
    invoke-direct {p0}, Landroid/view/ViewStructure$HtmlInfo;-><init>()V

    .line 2235
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-$$Nest$fgetmTag(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    .line 2236
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-$$Nest$fgetmNames(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 2238
    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    goto :goto_0

    .line 2240
    :cond_0
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-$$Nest$fgetmNames(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    .line 2241
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-$$Nest$fgetmValues(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    .line 2242
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-$$Nest$fgetmNames(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2243
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-$$Nest$fgetmValues(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2245
    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;Landroid/app/assist/AssistStructure$HtmlInfoNode-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode;-><init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 2266
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2254
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2255
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    .line 2256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2257
    new-instance v2, Landroid/util/Pair;

    aget-object v1, v1, v0

    iget-object v3, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 2258
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2256
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2261
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 1

    .line 2249
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2271
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2272
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2274
    return-void
.end method
