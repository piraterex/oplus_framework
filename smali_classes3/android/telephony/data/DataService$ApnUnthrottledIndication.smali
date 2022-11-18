.class final Landroid/telephony/data/DataService$ApnUnthrottledIndication;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApnUnthrottledIndication"
.end annotation


# instance fields
.field public final blacklist apn:Ljava/lang/String;

.field public final blacklist callback:Landroid/telephony/data/IDataServiceCallback;

.field public final blacklist dataProfile:Landroid/telephony/data/DataProfile;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/DataProfile;Landroid/telephony/data/IDataServiceCallback;)V
    .locals 1
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p1, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    .line 536
    iput-object p2, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 537
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/data/IDataServiceCallback;)V
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 530
    iput-object p1, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->apn:Ljava/lang/String;

    .line 531
    iput-object p2, p0, Landroid/telephony/data/DataService$ApnUnthrottledIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 532
    return-void
.end method
