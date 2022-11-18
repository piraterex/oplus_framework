.class public Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
.super Ljava/lang/Object;
.source "UiEventLoggerFake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/testing/UiEventLoggerFake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeUiEvent"
.end annotation


# instance fields
.field public final blacklist eventId:I

.field public final blacklist instanceId:Lcom/android/internal/logging/InstanceId;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist position:I

.field public final blacklist uid:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    .line 43
    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    .line 44
    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    .line 47
    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instanceId"    # Lcom/android/internal/logging/InstanceId;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    .line 51
    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    .line 52
    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    .line 55
    return-void
.end method

.method constructor blacklist <init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .locals 0
    .param p1, "eventId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "instanceId"    # Lcom/android/internal/logging/InstanceId;
    .param p5, "position"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    .line 59
    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    .line 60
    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 62
    iput p5, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    .line 63
    return-void
.end method
