.class public final Landroid/net/Uri$Builder;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o authority:Landroid/net/Uri$Part;

.field private greylist-max-o fragment:Landroid/net/Uri$Part;

.field private greylist-max-o opaquePart:Landroid/net/Uri$Part;

.field private greylist-max-o path:Landroid/net/Uri$PathPart;

.field private greylist-max-o query:Landroid/net/Uri$Part;

.field private greylist-max-o scheme:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o hasSchemeOrAuthority()Z
    .locals 2

    .line 1595
    iget-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "newSegment"    # Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "newSegment"    # Ljava/lang/String;

    .line 1475
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1538
    invoke-static {p2, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, "encodedParameter":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    if-nez v1, :cond_0

    .line 1541
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 1542
    return-object p0

    .line 1545
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v1

    .line 1546
    .local v1, "oldQuery":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1549
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    iput-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    goto :goto_1

    .line 1547
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    iput-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 1552
    :goto_1
    return-object p0
.end method

.method greylist-max-o authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "authority"    # Landroid/net/Uri$Part;

    .line 1420
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1422
    iput-object p1, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    .line 1423
    return-object p0
.end method

.method public whitelist authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 1430
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/net/Uri;
    .locals 9

    .line 1569
    iget-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    if-eqz v0, :cond_1

    .line 1570
    iget-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1575
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    iget-object v1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    iget-object v3, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$OpaqueUri-IA;)V

    return-object v0

    .line 1571
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An opaque URI must have a scheme."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1578
    :cond_1
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    .line 1579
    .local v0, "path":Landroid/net/Uri$PathPart;
    if-eqz v0, :cond_3

    sget-object v1, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1584
    :cond_2
    invoke-direct {p0}, Landroid/net/Uri$Builder;->hasSchemeOrAuthority()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1585
    invoke-static {v0}, Landroid/net/Uri$PathPart;->makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;

    move-result-object v0

    goto :goto_1

    .line 1580
    :cond_3
    :goto_0
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    .line 1589
    :cond_4
    :goto_1
    new-instance v8, Landroid/net/Uri$HierarchicalUri;

    iget-object v2, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    iget-object v5, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    iget-object v6, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$HierarchicalUri-IA;)V

    return-object v8
.end method

.method public whitelist clearQuery()Landroid/net/Uri$Builder;
    .locals 2

    .line 1559
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri$Part;

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 1437
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "fragment"    # Ljava/lang/String;

    .line 1523
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "opaquePart"    # Ljava/lang/String;

    .line 1415
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1468
    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 1504
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 0
    .param p1, "fragment"    # Landroid/net/Uri$Part;

    .line 1508
    iput-object p1, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    .line 1509
    return-object p0
.end method

.method public whitelist fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "fragment"    # Ljava/lang/String;

    .line 1516
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 0
    .param p1, "opaquePart"    # Landroid/net/Uri$Part;

    .line 1396
    iput-object p1, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1397
    return-object p0
.end method

.method public whitelist opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "opaquePart"    # Ljava/lang/String;

    .line 1406
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "path"    # Landroid/net/Uri$PathPart;

    .line 1442
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1444
    iput-object p1, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    .line 1445
    return-object p0
.end method

.method public whitelist path(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1457
    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "query"    # Landroid/net/Uri$Part;

    .line 1487
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1489
    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 1490
    return-object p0
.end method

.method public whitelist query(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 1497
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .line 1391
    iput-object p1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    .line 1392
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 1602
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
