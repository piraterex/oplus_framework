.class public final Landroid/telephony/ims/ImsSsData$Builder;
.super Ljava/lang/Object;
.source "ImsSsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsSsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mImsSsData:Landroid/telephony/ims/ImsSsData;


# direct methods
.method public constructor whitelist <init>(IIIII)V
    .locals 7
    .param p1, "serviceType"    # I
    .param p2, "requestType"    # I
    .param p3, "teleserviceType"    # I
    .param p4, "serviceClass"    # I
    .param p5, "result"    # I

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v6, Landroid/telephony/ims/ImsSsData;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsSsData;-><init>(IIIII)V

    iput-object v6, p0, Landroid/telephony/ims/ImsSsData$Builder;->mImsSsData:Landroid/telephony/ims/ImsSsData;

    .line 303
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ims/ImsSsData;
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData$Builder;->mImsSsData:Landroid/telephony/ims/ImsSsData;

    return-object v0
.end method

.method public whitelist setCallForwardingInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;)",
            "Landroid/telephony/ims/ImsSsData$Builder;"
        }
    .end annotation

    .line 320
    .local p1, "imsCallForwardInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsCallForwardInfo;>;"
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData$Builder;->mImsSsData:Landroid/telephony/ims/ImsSsData;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsData;->-$$Nest$fputmCfInfo(Landroid/telephony/ims/ImsSsData;Ljava/util/List;)V

    .line 321
    return-object p0
.end method

.method public whitelist setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;)",
            "Landroid/telephony/ims/ImsSsData$Builder;"
        }
    .end annotation

    .line 310
    .local p1, "imsSsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    iget-object v0, p0, Landroid/telephony/ims/ImsSsData$Builder;->mImsSsData:Landroid/telephony/ims/ImsSsData;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsData;->-$$Nest$fputmImsSsInfo(Landroid/telephony/ims/ImsSsData;Ljava/util/List;)V

    .line 311
    return-object p0
.end method
