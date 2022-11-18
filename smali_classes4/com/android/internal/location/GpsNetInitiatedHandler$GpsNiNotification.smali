.class public Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpsNiNotification"
.end annotation


# instance fields
.field public blacklist defaultResponse:I

.field public blacklist needNotify:Z

.field public blacklist needVerify:Z

.field public blacklist niType:I

.field public blacklist notificationId:I

.field public blacklist privacyOverride:Z

.field public greylist requestorId:Ljava/lang/String;

.field public greylist requestorIdEncoding:I

.field public greylist text:Ljava/lang/String;

.field public greylist textEncoding:I

.field public blacklist timeout:I


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method
