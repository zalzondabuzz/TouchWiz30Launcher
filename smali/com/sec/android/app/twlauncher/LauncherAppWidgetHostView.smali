.class public Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_0

    .line 51
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 52
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 73
    goto :goto_0

    .line 59
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_1

    .line 65
    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
