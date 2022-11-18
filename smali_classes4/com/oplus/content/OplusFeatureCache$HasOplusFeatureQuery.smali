.class final Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;
.super Ljava/lang/Object;
.source "OplusFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/OplusFeatureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HasOplusFeatureQuery"
.end annotation


# instance fields
.field public final blacklist name:Ljava/lang/String;

.field public final blacklist type:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->name:Ljava/lang/String;

    .line 161
    iput p2, p0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->type:I

    .line 162
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 170
    instance-of v0, p1, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 171
    move-object v0, p1

    check-cast v0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;

    .line 172
    .local v0, "r":Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;
    iget-object v2, p0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->type:I

    iget v3, v0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->type:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 174
    .end local v0    # "r":Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;
    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;->type:I

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 165
    const-string v1, "HasOplusFeatureQuery(name=\"%s\", type=%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
